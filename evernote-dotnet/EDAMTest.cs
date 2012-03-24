#region using

using System;
using System.Collections.Generic;
using System.IO;
using System.Security.Cryptography;
using Evernote.EDAM.Error;
using Evernote.EDAM.NoteStore;
using Evernote.EDAM.Type;
using Evernote.EDAM.UserStore;
using Thrift.Protocol;
using Thrift.Transport;

#endregion

public class EDAMTest
{
    public static void Main(string[] args)
    {
//        if (args.Length < 2)
//        {
//            Console.WriteLine("Arguments:  <username> <password>");
//            return;
//        }
        var username = "sankarj";
        var password = "1OzFpdim46UIV4bcuKEt";

        // NOTE: You must change the consumer key and consumer secret to the 
        //       key and secret that you received from Evernote
        var consumerKey = "sankarj";
        var consumerSecret = "1e2445a16a5b5377";

        var evernoteHost = "sandbox.evernote.com";
        var edamBaseUrl = "https://" + evernoteHost;
        // If using Mono, see http://www.mono-project.com/FAQ:_Security

        var userStoreUrl = new Uri(edamBaseUrl + "/edam/user");
        var userStoreTransport = new THttpClient(userStoreUrl);
        var userStoreProtocol = new TBinaryProtocol(userStoreTransport);
        var userStore = new UserStore.Client(userStoreProtocol);

        bool versionOK =
            userStore.checkVersion("C# EDAMTest",
                                   Evernote.EDAM.UserStore.Constants.EDAM_VERSION_MAJOR,
                                   Evernote.EDAM.UserStore.Constants.EDAM_VERSION_MINOR);
        Console.WriteLine("Is my EDAM protocol version up to date? " + versionOK);
        if (!versionOK)
        {
            return;
        }

        AuthenticationResult authResult = null;
        try
        {
            authResult = userStore.authenticate(username, password,
                                                consumerKey, consumerSecret);
        }
        catch (EDAMUserException ex)
        {
            String parameter = ex.Parameter;
            EDAMErrorCode errorCode = ex.ErrorCode;

            Console.WriteLine("Authentication failed (parameter: " + parameter + " errorCode: " + errorCode + ")");

            if (errorCode == EDAMErrorCode.INVALID_AUTH)
            {
                if (parameter == "consumerKey")
                {
                    if (consumerKey == "en-edamtest")
                    {
                        Console.WriteLine(
                            "You must replace the variables consumerKey and consumerSecret with the values you received from Evernote.");
                    }
                    else
                    {
                        Console.WriteLine("Your consumer key was not accepted by " + evernoteHost);
                        Console.WriteLine(
                            "This sample client application requires a client API key. If you requested a web service API key, you must authenticate using OAuth");
                    }
                    Console.WriteLine(
                        "If you do not have an API Key from Evernote, you can request one from http://www.evernote.com/about/developer/api");
                }
                else if (parameter == "username")
                {
                    Console.WriteLine("You must authenticate using a username and password from " + evernoteHost);
                    if (evernoteHost == "www.evernote.com" == false)
                    {
                        Console.WriteLine("Note that your production Evernote account will not work on " + evernoteHost +
                                          ",");
                        Console.WriteLine("you must register for a separate test account at https://" + evernoteHost +
                                          "/Registration.action");
                    }
                }
                else if (parameter == "password")
                {
                    Console.WriteLine("The password that you entered is incorrect");
                }
            }

            return;
        }

        User user = authResult.User;
        String authToken = authResult.AuthenticationToken;
        Console.WriteLine("Authentication successful for: " + user.Username);
        Console.WriteLine("Authentication token = " + authToken);

        var noteStoreUrl = new Uri(edamBaseUrl + "/edam/note/" + user.ShardId);
        var noteStoreTransport = new THttpClient(noteStoreUrl);
        var noteStoreProtocol = new TBinaryProtocol(noteStoreTransport);
        var noteStore = new NoteStore.Client(noteStoreProtocol);

        List<Notebook> notebooks = noteStore.listNotebooks(authToken);
        Console.WriteLine("Found " + notebooks.Count + " notebooks:");
        var defaultNotebook = notebooks[0];
        foreach (var notebook in notebooks)
        {
            Console.WriteLine("  * " + notebook.Name);
            if (notebook.DefaultNotebook)
            {
                defaultNotebook = notebook;
            }
        }


        Console.WriteLine();
        Console.WriteLine("Creating a note in the default notebook: " +
                          defaultNotebook.Name);
        Console.WriteLine();

//        var image = ReadFully(File.OpenRead("enlogo.png"));
//        var hash = new MD5CryptoServiceProvider().ComputeHash(image);
//        var hashHex = BitConverter.ToString(hash).Replace("-", "").ToLower();
//
//        var data = new Data();
//        data.Size = image.Length;
//        data.BodyHash = hash;
//        data.Body = image;
//
//        var resource = new Resource();
//        resource.Mime = "image/png";
//        resource.Data = data;
//
//        var note = new Note();
//        note.NotebookGuid = defaultNotebook.Guid;
//        note.Title = "Test note from EDAMTest.cs";
//        note.Content = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
//                       "<!DOCTYPE en-note SYSTEM \"http://xml.evernote.com/pub/enml2.dtd\">" +
//                       "<en-note>Here's the Evernote logo:<br/>" +
//                       "<en-media type=\"image/png\" hash=\"" + hashHex + "\"/>" +
//                       "</en-note>";
//
//        note.Resources = new List<Resource>();
//        note.Resources.Add(resource);
//
//        Note createdNote = noteStore.createNote(authToken, note);


        // TESTING BY SJ
        var bookmarkNote = new Note();
        bookmarkNote.NotebookGuid = defaultNotebook.Guid;
        bookmarkNote.Title = "From bookmarks";
        var data = new Data();
        var doc = new Uri("http://www.google.com");
        data.Body = doc;
        var resource = new Resource();
        resource.Data = data;
        bookmarkNote.Attributes
        bookmarkNote.Resources = new List<Resource>();
        bookmarkNote.Resources.Add(resource);
        var createdNote = noteStore.createNote(authToken, bookmarkNote);
        // END OF TESTING BY SJ

        Console.WriteLine("Successfully created new note with GUID: " + createdNote.Guid);
    }

    public static byte[] ReadFully(Stream stream)
    {
        var buffer = new byte[32768];
        using (var ms = new MemoryStream())
        {
            while (true)
            {
                var read = stream.Read(buffer, 0, buffer.Length);
                if (read <= 0)
                {
                    return ms.ToArray();
                }
                ms.Write(buffer, 0, read);
            }
        }
    }
}