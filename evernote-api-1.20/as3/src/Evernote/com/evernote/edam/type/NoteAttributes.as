/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.evernote.edam.type {

import org.apache.thrift.Set;
import org.apache.thrift.type.BigInteger;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;

import com.evernote.edam.type.LazyMap;

  /**
   * The list of optional attributes that can be stored on a note.
   * <dl>
   * <dt>subjectDate</dt>
   *   <dd>time that the note refers to
   *   </dd>
   * 
   * <dt>latitude</dt>
   *   <dd>the latitude where the note was taken
   *   </dd>
   * 
   * <dt>longitude</dt>
   *   <dd>the longitude where the note was taken
   *   </dd>
   * 
   * <dt>altitude</dt>
   *   <dd>the altitude where the note was taken
   *   </dd>
   * 
   * <dt>author</dt>
   *   <dd>the author of the content of the note
   *   <br/>
   *   Length:  EDAM_ATTRIBUTE_LEN_MIN - EDAM_ATTRIBUTE_LEN_MAX
   *   </dd>
   * 
   * <dt>source</dt>
   *   <dd>the method that the note was added to the account, if the
   *   note wasn't directly authored in an Evernote desktop client.
   *   <br/>
   *   Length:  EDAM_ATTRIBUTE_LEN_MIN - EDAM_ATTRIBUTE_LEN_MAX
   *   </dd>
   * 
   * <dt>sourceURL</dt>
   *   <dd>the original location where the resource was hosted. For web clips,
   *   this will be the URL of the page that was clipped.
   *   <br/>
   *   Length:  EDAM_ATTRIBUTE_LEN_MIN - EDAM_ATTRIBUTE_LEN_MAX
   *   </dd>
   * 
   * <dt>sourceApplication</dt>
   *   <dd>an identifying string for the application that
   *   created this note.  This string does not have a guaranteed syntax or
   *   structure -- it is intended for human inspection and tracking.
   *   <br/>
   *   Length:  EDAM_ATTRIBUTE_LEN_MIN - EDAM_ATTRIBUTE_LEN_MAX
   *   </dd>
   * 
   * <dt>shareDate</dt>
   *  <dd>The date and time when this note was directly shared via its own URL.
   *  This is only set on notes that were individually shared - it is independent
   *  of any notebook-level sharing of the containing notepbook. This field
   *  is treated as "read-only" for clients; the server will ignore changes
   *  to this field from an external client.
   *  </dd>
   * 
   * </dl>
   * <dt>taskDate</dt>
   * <dd>The date and time when a note was set to be a task. The value
   * is a read/write attirubte that is used by applications to define
   * the presentation order of notes that are treated as tasks. Clearing
   * the taskDate removes the task behaviors. Applications are
   * discouraged from displaying the time portion of a task.
   * </dd>
   * 
   * <dt>taskCompleteDate</dt>
   * <dd>The date and time when a user marked a task note as
   * complete. Users typically do not manually set this value, but like
   * createDate, it is automatically set when the user marks the note as
   * complete. Once a task is marked as complete reminders associated
   * with due dates are no longer invoked.
   * </dd>
   * 
   * <dt>taskDueDate</dt>
   * <dd>The date and time a user as selected for a note to be due. This
   * is an optional attribute of a task note (not all tasks need to have
   * a due date). Due dates trigger reminders and
   * notifications. Notifications and reminders are not tiggered if the
   * taskCompleteDate is set.</dd>
   * 
   * <dt>placeName</dt>
   * <dd>Allows the user to assign a human-readable location name associated
   * with a note. Users may assign values like 'Home' and 'Work'. Place
   * names may also be populated with values from geonames database
   * (e.g., a restaurant name). Applications are encouraged to normalize values
   * so that grouping values by place name provides a useful result. Applications
   * MUST NOT automatically add place name values based on geolocation without
   * confirmation from the user; that is, the value in this field should be
   * more useful than a simple automated lookup based on the note's latitude
   * and longitude.</dd>
   * 
   * <dt>contentClass</dt>
   * <dd>The class (or type) of note. This field is used to indicate to
   * clients that special structured information is represented within
   * the note such that special rules apply when making
   * modifications. If contentClass is set and the client
   * application does not specifically support the specified class,
   * the client MUST treat the note as read-only. In this case, the
   * client MAY modify the note's notebook and tags via the
   * Note.notebookGuid and Note.tagGuids fields.
   * <p>Applications should set contentClass only when they are creating notes
   * that contain structured information that needs to be maintained in order
   * for the user to be able to use the note within that application.
   * Setting contentClass makes a note read-only in other applications, so
   * there is a trade-off when an application chooses to use contentClass.
   * Applications that set contentClass when creating notes must use a contentClass
   * string of the form <i>CompanyName.ApplicationName</i> to ensure uniqueness.</p>
   * Length restrictions: EDAM_NOTE_CONTENT_CLASS_LEN_MIN, EDAM_NOTE_CONTENT_CLASS_LEN_MAX
   * <br/>
   * Regex: EDAM_NOTE_CONTENT_CLASS_REGEX
   * </dd>
   * 
   * <dt>applicationData</dt>
   * <dd>Provides a location for applications to store a relatively small
   * (4kb) blob of data that is not meant to be visible to the user and
   * that is opaque to the Evernote service. A single application may use at most
   * one entry in this map, using its API consumer key as the map key. See the
   * documentation for LazyMap for a description of when the actual map values
   * are returned by the service.
   * <p>To safely add or modify your application's entry in the map, use
   * NoteStore.setNoteApplicationDataEntry. To safely remove your application's
   * entry from the map, use NoteStore.unsetNoteApplicationDataEntry.</p>
   * Minimum length of a name (key): EDAM_APPLICATIONDATA_NAME_LEN_MIN
   * <br/>
   * Sum max size of key and value: EDAM_APPLICATIONDATA_ENTRY_LEN_MAX
   * <br/>
   * Syntax regex for name (key): EDAM_APPLICATIONDATA_NAME_REGEX
   * </dd>
   * 
   * </dl>
   */
  public class NoteAttributes implements TBase   {
    private static const STRUCT_DESC:TStruct = new TStruct("NoteAttributes");
    private static const SUBJECT_DATE_FIELD_DESC:TField = new TField("subjectDate", TType.I64, 1);
    private static const LATITUDE_FIELD_DESC:TField = new TField("latitude", TType.DOUBLE, 10);
    private static const LONGITUDE_FIELD_DESC:TField = new TField("longitude", TType.DOUBLE, 11);
    private static const ALTITUDE_FIELD_DESC:TField = new TField("altitude", TType.DOUBLE, 12);
    private static const AUTHOR_FIELD_DESC:TField = new TField("author", TType.STRING, 13);
    private static const SOURCE_FIELD_DESC:TField = new TField("source", TType.STRING, 14);
    private static const SOURCE_URL_FIELD_DESC:TField = new TField("sourceURL", TType.STRING, 15);
    private static const SOURCE_APPLICATION_FIELD_DESC:TField = new TField("sourceApplication", TType.STRING, 16);
    private static const SHARE_DATE_FIELD_DESC:TField = new TField("shareDate", TType.I64, 17);
    private static const TASK_DATE_FIELD_DESC:TField = new TField("taskDate", TType.I64, 18);
    private static const TASK_COMPLETE_DATE_FIELD_DESC:TField = new TField("taskCompleteDate", TType.I64, 19);
    private static const TASK_DUE_DATE_FIELD_DESC:TField = new TField("taskDueDate", TType.I64, 20);
    private static const PLACE_NAME_FIELD_DESC:TField = new TField("placeName", TType.STRING, 21);
    private static const CONTENT_CLASS_FIELD_DESC:TField = new TField("contentClass", TType.STRING, 22);
    private static const APPLICATION_DATA_FIELD_DESC:TField = new TField("applicationData", TType.STRUCT, 23);

    private var _subjectDate:BigInteger;
    public static const SUBJECTDATE:int = 1;
    private var _latitude:Number;
    public static const LATITUDE:int = 10;
    private var _longitude:Number;
    public static const LONGITUDE:int = 11;
    private var _altitude:Number;
    public static const ALTITUDE:int = 12;
    private var _author:String;
    public static const AUTHOR:int = 13;
    private var _source:String;
    public static const SOURCE:int = 14;
    private var _sourceURL:String;
    public static const SOURCEURL:int = 15;
    private var _sourceApplication:String;
    public static const SOURCEAPPLICATION:int = 16;
    private var _shareDate:BigInteger;
    public static const SHAREDATE:int = 17;
    private var _taskDate:BigInteger;
    public static const TASKDATE:int = 18;
    private var _taskCompleteDate:BigInteger;
    public static const TASKCOMPLETEDATE:int = 19;
    private var _taskDueDate:BigInteger;
    public static const TASKDUEDATE:int = 20;
    private var _placeName:String;
    public static const PLACENAME:int = 21;
    private var _contentClass:String;
    public static const CONTENTCLASS:int = 22;
    private var _applicationData:LazyMap;
    public static const APPLICATIONDATA:int = 23;

    private var __isset_subjectDate:Boolean = false;
    private var __isset_latitude:Boolean = false;
    private var __isset_longitude:Boolean = false;
    private var __isset_altitude:Boolean = false;
    private var __isset_shareDate:Boolean = false;
    private var __isset_taskDate:Boolean = false;
    private var __isset_taskCompleteDate:Boolean = false;
    private var __isset_taskDueDate:Boolean = false;

    public static const metaDataMap:Dictionary = new Dictionary();
    {
      metaDataMap[SUBJECTDATE] = new FieldMetaData("subjectDate", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I64));
      metaDataMap[LATITUDE] = new FieldMetaData("latitude", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.DOUBLE));
      metaDataMap[LONGITUDE] = new FieldMetaData("longitude", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.DOUBLE));
      metaDataMap[ALTITUDE] = new FieldMetaData("altitude", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.DOUBLE));
      metaDataMap[AUTHOR] = new FieldMetaData("author", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[SOURCE] = new FieldMetaData("source", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[SOURCEURL] = new FieldMetaData("sourceURL", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[SOURCEAPPLICATION] = new FieldMetaData("sourceApplication", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[SHAREDATE] = new FieldMetaData("shareDate", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I64));
      metaDataMap[TASKDATE] = new FieldMetaData("taskDate", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I64));
      metaDataMap[TASKCOMPLETEDATE] = new FieldMetaData("taskCompleteDate", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I64));
      metaDataMap[TASKDUEDATE] = new FieldMetaData("taskDueDate", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I64));
      metaDataMap[PLACENAME] = new FieldMetaData("placeName", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[CONTENTCLASS] = new FieldMetaData("contentClass", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[APPLICATIONDATA] = new FieldMetaData("applicationData", TFieldRequirementType.OPTIONAL, 
          new StructMetaData(TType.STRUCT, LazyMap));
    }
    {
      FieldMetaData.addStructMetaDataMap(NoteAttributes, metaDataMap);
    }

    public function NoteAttributes() {
    }

    public function get subjectDate():BigInteger {
      return this._subjectDate;
    }

    public function set subjectDate(subjectDate:BigInteger):void {
      this._subjectDate = subjectDate;
      this.__isset_subjectDate = true;
    }

    public function unsetSubjectDate():void {
      this.__isset_subjectDate = false;
    }

    // Returns true if field subjectDate is set (has been assigned a value) and false otherwise
    public function isSetSubjectDate():Boolean {
      return this.__isset_subjectDate;
    }

    public function get latitude():Number {
      return this._latitude;
    }

    public function set latitude(latitude:Number):void {
      this._latitude = latitude;
      this.__isset_latitude = true;
    }

    public function unsetLatitude():void {
      this.__isset_latitude = false;
    }

    // Returns true if field latitude is set (has been assigned a value) and false otherwise
    public function isSetLatitude():Boolean {
      return this.__isset_latitude;
    }

    public function get longitude():Number {
      return this._longitude;
    }

    public function set longitude(longitude:Number):void {
      this._longitude = longitude;
      this.__isset_longitude = true;
    }

    public function unsetLongitude():void {
      this.__isset_longitude = false;
    }

    // Returns true if field longitude is set (has been assigned a value) and false otherwise
    public function isSetLongitude():Boolean {
      return this.__isset_longitude;
    }

    public function get altitude():Number {
      return this._altitude;
    }

    public function set altitude(altitude:Number):void {
      this._altitude = altitude;
      this.__isset_altitude = true;
    }

    public function unsetAltitude():void {
      this.__isset_altitude = false;
    }

    // Returns true if field altitude is set (has been assigned a value) and false otherwise
    public function isSetAltitude():Boolean {
      return this.__isset_altitude;
    }

    public function get author():String {
      return this._author;
    }

    public function set author(author:String):void {
      this._author = author;
    }

    public function unsetAuthor():void {
      this.author = null;
    }

    // Returns true if field author is set (has been assigned a value) and false otherwise
    public function isSetAuthor():Boolean {
      return this.author != null;
    }

    public function get source():String {
      return this._source;
    }

    public function set source(source:String):void {
      this._source = source;
    }

    public function unsetSource():void {
      this.source = null;
    }

    // Returns true if field source is set (has been assigned a value) and false otherwise
    public function isSetSource():Boolean {
      return this.source != null;
    }

    public function get sourceURL():String {
      return this._sourceURL;
    }

    public function set sourceURL(sourceURL:String):void {
      this._sourceURL = sourceURL;
    }

    public function unsetSourceURL():void {
      this.sourceURL = null;
    }

    // Returns true if field sourceURL is set (has been assigned a value) and false otherwise
    public function isSetSourceURL():Boolean {
      return this.sourceURL != null;
    }

    public function get sourceApplication():String {
      return this._sourceApplication;
    }

    public function set sourceApplication(sourceApplication:String):void {
      this._sourceApplication = sourceApplication;
    }

    public function unsetSourceApplication():void {
      this.sourceApplication = null;
    }

    // Returns true if field sourceApplication is set (has been assigned a value) and false otherwise
    public function isSetSourceApplication():Boolean {
      return this.sourceApplication != null;
    }

    public function get shareDate():BigInteger {
      return this._shareDate;
    }

    public function set shareDate(shareDate:BigInteger):void {
      this._shareDate = shareDate;
      this.__isset_shareDate = true;
    }

    public function unsetShareDate():void {
      this.__isset_shareDate = false;
    }

    // Returns true if field shareDate is set (has been assigned a value) and false otherwise
    public function isSetShareDate():Boolean {
      return this.__isset_shareDate;
    }

    public function get taskDate():BigInteger {
      return this._taskDate;
    }

    public function set taskDate(taskDate:BigInteger):void {
      this._taskDate = taskDate;
      this.__isset_taskDate = true;
    }

    public function unsetTaskDate():void {
      this.__isset_taskDate = false;
    }

    // Returns true if field taskDate is set (has been assigned a value) and false otherwise
    public function isSetTaskDate():Boolean {
      return this.__isset_taskDate;
    }

    public function get taskCompleteDate():BigInteger {
      return this._taskCompleteDate;
    }

    public function set taskCompleteDate(taskCompleteDate:BigInteger):void {
      this._taskCompleteDate = taskCompleteDate;
      this.__isset_taskCompleteDate = true;
    }

    public function unsetTaskCompleteDate():void {
      this.__isset_taskCompleteDate = false;
    }

    // Returns true if field taskCompleteDate is set (has been assigned a value) and false otherwise
    public function isSetTaskCompleteDate():Boolean {
      return this.__isset_taskCompleteDate;
    }

    public function get taskDueDate():BigInteger {
      return this._taskDueDate;
    }

    public function set taskDueDate(taskDueDate:BigInteger):void {
      this._taskDueDate = taskDueDate;
      this.__isset_taskDueDate = true;
    }

    public function unsetTaskDueDate():void {
      this.__isset_taskDueDate = false;
    }

    // Returns true if field taskDueDate is set (has been assigned a value) and false otherwise
    public function isSetTaskDueDate():Boolean {
      return this.__isset_taskDueDate;
    }

    public function get placeName():String {
      return this._placeName;
    }

    public function set placeName(placeName:String):void {
      this._placeName = placeName;
    }

    public function unsetPlaceName():void {
      this.placeName = null;
    }

    // Returns true if field placeName is set (has been assigned a value) and false otherwise
    public function isSetPlaceName():Boolean {
      return this.placeName != null;
    }

    public function get contentClass():String {
      return this._contentClass;
    }

    public function set contentClass(contentClass:String):void {
      this._contentClass = contentClass;
    }

    public function unsetContentClass():void {
      this.contentClass = null;
    }

    // Returns true if field contentClass is set (has been assigned a value) and false otherwise
    public function isSetContentClass():Boolean {
      return this.contentClass != null;
    }

    public function get applicationData():LazyMap {
      return this._applicationData;
    }

    public function set applicationData(applicationData:LazyMap):void {
      this._applicationData = applicationData;
    }

    public function unsetApplicationData():void {
      this.applicationData = null;
    }

    // Returns true if field applicationData is set (has been assigned a value) and false otherwise
    public function isSetApplicationData():Boolean {
      return this.applicationData != null;
    }

    public function setFieldValue(fieldID:int, value:*):void {
      switch (fieldID) {
      case SUBJECTDATE:
        if (value == null) {
          unsetSubjectDate();
        } else {
          this.subjectDate = value;
        }
        break;

      case LATITUDE:
        if (value == null) {
          unsetLatitude();
        } else {
          this.latitude = value;
        }
        break;

      case LONGITUDE:
        if (value == null) {
          unsetLongitude();
        } else {
          this.longitude = value;
        }
        break;

      case ALTITUDE:
        if (value == null) {
          unsetAltitude();
        } else {
          this.altitude = value;
        }
        break;

      case AUTHOR:
        if (value == null) {
          unsetAuthor();
        } else {
          this.author = value;
        }
        break;

      case SOURCE:
        if (value == null) {
          unsetSource();
        } else {
          this.source = value;
        }
        break;

      case SOURCEURL:
        if (value == null) {
          unsetSourceURL();
        } else {
          this.sourceURL = value;
        }
        break;

      case SOURCEAPPLICATION:
        if (value == null) {
          unsetSourceApplication();
        } else {
          this.sourceApplication = value;
        }
        break;

      case SHAREDATE:
        if (value == null) {
          unsetShareDate();
        } else {
          this.shareDate = value;
        }
        break;

      case TASKDATE:
        if (value == null) {
          unsetTaskDate();
        } else {
          this.taskDate = value;
        }
        break;

      case TASKCOMPLETEDATE:
        if (value == null) {
          unsetTaskCompleteDate();
        } else {
          this.taskCompleteDate = value;
        }
        break;

      case TASKDUEDATE:
        if (value == null) {
          unsetTaskDueDate();
        } else {
          this.taskDueDate = value;
        }
        break;

      case PLACENAME:
        if (value == null) {
          unsetPlaceName();
        } else {
          this.placeName = value;
        }
        break;

      case CONTENTCLASS:
        if (value == null) {
          unsetContentClass();
        } else {
          this.contentClass = value;
        }
        break;

      case APPLICATIONDATA:
        if (value == null) {
          unsetApplicationData();
        } else {
          this.applicationData = value;
        }
        break;

      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function getFieldValue(fieldID:int):* {
      switch (fieldID) {
      case SUBJECTDATE:
        return this.subjectDate;
      case LATITUDE:
        return this.latitude;
      case LONGITUDE:
        return this.longitude;
      case ALTITUDE:
        return this.altitude;
      case AUTHOR:
        return this.author;
      case SOURCE:
        return this.source;
      case SOURCEURL:
        return this.sourceURL;
      case SOURCEAPPLICATION:
        return this.sourceApplication;
      case SHAREDATE:
        return this.shareDate;
      case TASKDATE:
        return this.taskDate;
      case TASKCOMPLETEDATE:
        return this.taskCompleteDate;
      case TASKDUEDATE:
        return this.taskDueDate;
      case PLACENAME:
        return this.placeName;
      case CONTENTCLASS:
        return this.contentClass;
      case APPLICATIONDATA:
        return this.applicationData;
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
    public function isSet(fieldID:int):Boolean {
      switch (fieldID) {
      case SUBJECTDATE:
        return isSetSubjectDate();
      case LATITUDE:
        return isSetLatitude();
      case LONGITUDE:
        return isSetLongitude();
      case ALTITUDE:
        return isSetAltitude();
      case AUTHOR:
        return isSetAuthor();
      case SOURCE:
        return isSetSource();
      case SOURCEURL:
        return isSetSourceURL();
      case SOURCEAPPLICATION:
        return isSetSourceApplication();
      case SHAREDATE:
        return isSetShareDate();
      case TASKDATE:
        return isSetTaskDate();
      case TASKCOMPLETEDATE:
        return isSetTaskCompleteDate();
      case TASKDUEDATE:
        return isSetTaskDueDate();
      case PLACENAME:
        return isSetPlaceName();
      case CONTENTCLASS:
        return isSetContentClass();
      case APPLICATIONDATA:
        return isSetApplicationData();
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function read(iprot:TProtocol):void {
      var field:TField;
      iprot.readStructBegin();
      while (true)
      {
        field = iprot.readFieldBegin();
        if (field.type == TType.STOP) { 
          break;
        }
        switch (field.id)
        {
          case SUBJECTDATE:
            if (field.type == TType.I64) {
              this.subjectDate = iprot.readI64();
              this.__isset_subjectDate = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case LATITUDE:
            if (field.type == TType.DOUBLE) {
              this.latitude = iprot.readDouble();
              this.__isset_latitude = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case LONGITUDE:
            if (field.type == TType.DOUBLE) {
              this.longitude = iprot.readDouble();
              this.__isset_longitude = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ALTITUDE:
            if (field.type == TType.DOUBLE) {
              this.altitude = iprot.readDouble();
              this.__isset_altitude = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case AUTHOR:
            if (field.type == TType.STRING) {
              this.author = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case SOURCE:
            if (field.type == TType.STRING) {
              this.source = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case SOURCEURL:
            if (field.type == TType.STRING) {
              this.sourceURL = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case SOURCEAPPLICATION:
            if (field.type == TType.STRING) {
              this.sourceApplication = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case SHAREDATE:
            if (field.type == TType.I64) {
              this.shareDate = iprot.readI64();
              this.__isset_shareDate = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case TASKDATE:
            if (field.type == TType.I64) {
              this.taskDate = iprot.readI64();
              this.__isset_taskDate = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case TASKCOMPLETEDATE:
            if (field.type == TType.I64) {
              this.taskCompleteDate = iprot.readI64();
              this.__isset_taskCompleteDate = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case TASKDUEDATE:
            if (field.type == TType.I64) {
              this.taskDueDate = iprot.readI64();
              this.__isset_taskDueDate = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case PLACENAME:
            if (field.type == TType.STRING) {
              this.placeName = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case CONTENTCLASS:
            if (field.type == TType.STRING) {
              this.contentClass = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case APPLICATIONDATA:
            if (field.type == TType.STRUCT) {
              this.applicationData = new LazyMap();
              this.applicationData.read(iprot);
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          default:
            TProtocolUtil.skip(iprot, field.type);
            break;
        }
        iprot.readFieldEnd();
      }
      iprot.readStructEnd();


      // check for required fields of primitive type, which can't be checked in the validate method
      validate();
    }

    public function write(oprot:TProtocol):void {
      validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (isSetSubjectDate()) {
        oprot.writeFieldBegin(SUBJECT_DATE_FIELD_DESC);
        oprot.writeI64(this.subjectDate);
        oprot.writeFieldEnd();
      }
      if (isSetLatitude()) {
        oprot.writeFieldBegin(LATITUDE_FIELD_DESC);
        oprot.writeDouble(this.latitude);
        oprot.writeFieldEnd();
      }
      if (isSetLongitude()) {
        oprot.writeFieldBegin(LONGITUDE_FIELD_DESC);
        oprot.writeDouble(this.longitude);
        oprot.writeFieldEnd();
      }
      if (isSetAltitude()) {
        oprot.writeFieldBegin(ALTITUDE_FIELD_DESC);
        oprot.writeDouble(this.altitude);
        oprot.writeFieldEnd();
      }
      if (this.author != null) {
        if (isSetAuthor()) {
          oprot.writeFieldBegin(AUTHOR_FIELD_DESC);
          oprot.writeString(this.author);
          oprot.writeFieldEnd();
        }
      }
      if (this.source != null) {
        if (isSetSource()) {
          oprot.writeFieldBegin(SOURCE_FIELD_DESC);
          oprot.writeString(this.source);
          oprot.writeFieldEnd();
        }
      }
      if (this.sourceURL != null) {
        if (isSetSourceURL()) {
          oprot.writeFieldBegin(SOURCE_URL_FIELD_DESC);
          oprot.writeString(this.sourceURL);
          oprot.writeFieldEnd();
        }
      }
      if (this.sourceApplication != null) {
        if (isSetSourceApplication()) {
          oprot.writeFieldBegin(SOURCE_APPLICATION_FIELD_DESC);
          oprot.writeString(this.sourceApplication);
          oprot.writeFieldEnd();
        }
      }
      if (isSetShareDate()) {
        oprot.writeFieldBegin(SHARE_DATE_FIELD_DESC);
        oprot.writeI64(this.shareDate);
        oprot.writeFieldEnd();
      }
      if (isSetTaskDate()) {
        oprot.writeFieldBegin(TASK_DATE_FIELD_DESC);
        oprot.writeI64(this.taskDate);
        oprot.writeFieldEnd();
      }
      if (isSetTaskCompleteDate()) {
        oprot.writeFieldBegin(TASK_COMPLETE_DATE_FIELD_DESC);
        oprot.writeI64(this.taskCompleteDate);
        oprot.writeFieldEnd();
      }
      if (isSetTaskDueDate()) {
        oprot.writeFieldBegin(TASK_DUE_DATE_FIELD_DESC);
        oprot.writeI64(this.taskDueDate);
        oprot.writeFieldEnd();
      }
      if (this.placeName != null) {
        if (isSetPlaceName()) {
          oprot.writeFieldBegin(PLACE_NAME_FIELD_DESC);
          oprot.writeString(this.placeName);
          oprot.writeFieldEnd();
        }
      }
      if (this.contentClass != null) {
        if (isSetContentClass()) {
          oprot.writeFieldBegin(CONTENT_CLASS_FIELD_DESC);
          oprot.writeString(this.contentClass);
          oprot.writeFieldEnd();
        }
      }
      if (this.applicationData != null) {
        if (isSetApplicationData()) {
          oprot.writeFieldBegin(APPLICATION_DATA_FIELD_DESC);
          this.applicationData.write(oprot);
          oprot.writeFieldEnd();
        }
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

    public function toString():String {
      var ret:String = new String("NoteAttributes(");
      var first:Boolean = true;

      if (isSetSubjectDate()) {
        ret += "subjectDate:";
        ret += this.subjectDate;
        first = false;
      }
      if (isSetLatitude()) {
        if (!first) ret +=  ", ";
        ret += "latitude:";
        ret += this.latitude;
        first = false;
      }
      if (isSetLongitude()) {
        if (!first) ret +=  ", ";
        ret += "longitude:";
        ret += this.longitude;
        first = false;
      }
      if (isSetAltitude()) {
        if (!first) ret +=  ", ";
        ret += "altitude:";
        ret += this.altitude;
        first = false;
      }
      if (isSetAuthor()) {
        if (!first) ret +=  ", ";
        ret += "author:";
        if (this.author == null) {
          ret += "null";
        } else {
          ret += this.author;
        }
        first = false;
      }
      if (isSetSource()) {
        if (!first) ret +=  ", ";
        ret += "source:";
        if (this.source == null) {
          ret += "null";
        } else {
          ret += this.source;
        }
        first = false;
      }
      if (isSetSourceURL()) {
        if (!first) ret +=  ", ";
        ret += "sourceURL:";
        if (this.sourceURL == null) {
          ret += "null";
        } else {
          ret += this.sourceURL;
        }
        first = false;
      }
      if (isSetSourceApplication()) {
        if (!first) ret +=  ", ";
        ret += "sourceApplication:";
        if (this.sourceApplication == null) {
          ret += "null";
        } else {
          ret += this.sourceApplication;
        }
        first = false;
      }
      if (isSetShareDate()) {
        if (!first) ret +=  ", ";
        ret += "shareDate:";
        ret += this.shareDate;
        first = false;
      }
      if (isSetTaskDate()) {
        if (!first) ret +=  ", ";
        ret += "taskDate:";
        ret += this.taskDate;
        first = false;
      }
      if (isSetTaskCompleteDate()) {
        if (!first) ret +=  ", ";
        ret += "taskCompleteDate:";
        ret += this.taskCompleteDate;
        first = false;
      }
      if (isSetTaskDueDate()) {
        if (!first) ret +=  ", ";
        ret += "taskDueDate:";
        ret += this.taskDueDate;
        first = false;
      }
      if (isSetPlaceName()) {
        if (!first) ret +=  ", ";
        ret += "placeName:";
        if (this.placeName == null) {
          ret += "null";
        } else {
          ret += this.placeName;
        }
        first = false;
      }
      if (isSetContentClass()) {
        if (!first) ret +=  ", ";
        ret += "contentClass:";
        if (this.contentClass == null) {
          ret += "null";
        } else {
          ret += this.contentClass;
        }
        first = false;
      }
      if (isSetApplicationData()) {
        if (!first) ret +=  ", ";
        ret += "applicationData:";
        if (this.applicationData == null) {
          ret += "null";
        } else {
          ret += this.applicationData;
        }
        first = false;
      }
      ret += ")";
      return ret;
    }

    public function validate():void {
      // check for required fields
      // check that fields of type enum have valid values
    }

  }

}