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


  /**
   * A link in an users account that refers them to a public or individual share in
   * another user's account.
   * 
   * <dl>
   * <dt>shareName</dt>
   * <dd>the display name of the shared notebook.
   *   The link owner can change this.</dd>
   * 
   * <dt>username</dt>
   * <dd>the username of the user who owns the shared or public notebook</dd>
   * 
   * <dt>shardId</dt>
   * <dd>the shard ID of the notebook if the notebook is not public</dt>
   * 
   * <dt>shareKey</dt>
   * <dd>the secret key that provides access to the shared notebook</dd>
   * 
   * <dt>uri</dt>
   * <dd>the identifier of the public notebook</dd>
   * 
   * <dt>guid</dt>
   *   <dd>The unique identifier of this linked notebook.  Will be set whenever
   *   a resource is retrieved from the service, but may be null when a client
   *   is creating a resource.
   *   <br/>
   *   Length:  EDAM_GUID_LEN_MIN - EDAM_GUID_LEN_MAX
   *   <br/>
   *   Regex:  EDAM_GUID_REGEX
   *   </dd>
   * 
   * <dt>updateSequenceNum</dt>
   *   <dd>A number identifying the last transaction to
   *   modify the state of this object.  The USN values are sequential within an
   *   account, and can be used to compare the order of modifications within the
   *   service.
   *   </dd>
   * </dl>
   */
  public class LinkedNotebook implements TBase   {
    private static const STRUCT_DESC:TStruct = new TStruct("LinkedNotebook");
    private static const SHARE_NAME_FIELD_DESC:TField = new TField("shareName", TType.STRING, 2);
    private static const USERNAME_FIELD_DESC:TField = new TField("username", TType.STRING, 3);
    private static const SHARD_ID_FIELD_DESC:TField = new TField("shardId", TType.STRING, 4);
    private static const SHARE_KEY_FIELD_DESC:TField = new TField("shareKey", TType.STRING, 5);
    private static const URI_FIELD_DESC:TField = new TField("uri", TType.STRING, 6);
    private static const GUID_FIELD_DESC:TField = new TField("guid", TType.STRING, 7);
    private static const UPDATE_SEQUENCE_NUM_FIELD_DESC:TField = new TField("updateSequenceNum", TType.I32, 8);

    private var _shareName:String;
    public static const SHARENAME:int = 2;
    private var _username:String;
    public static const USERNAME:int = 3;
    private var _shardId:String;
    public static const SHARDID:int = 4;
    private var _shareKey:String;
    public static const SHAREKEY:int = 5;
    private var _uri:String;
    public static const URI:int = 6;
    private var _guid:String;
    public static const GUID:int = 7;
    private var _updateSequenceNum:int;
    public static const UPDATESEQUENCENUM:int = 8;

    private var __isset_updateSequenceNum:Boolean = false;

    public static const metaDataMap:Dictionary = new Dictionary();
    {
      metaDataMap[SHARENAME] = new FieldMetaData("shareName", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[USERNAME] = new FieldMetaData("username", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[SHARDID] = new FieldMetaData("shardId", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[SHAREKEY] = new FieldMetaData("shareKey", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[URI] = new FieldMetaData("uri", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[GUID] = new FieldMetaData("guid", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[UPDATESEQUENCENUM] = new FieldMetaData("updateSequenceNum", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I32));
    }
    {
      FieldMetaData.addStructMetaDataMap(LinkedNotebook, metaDataMap);
    }

    public function LinkedNotebook() {
    }

    public function get shareName():String {
      return this._shareName;
    }

    public function set shareName(shareName:String):void {
      this._shareName = shareName;
    }

    public function unsetShareName():void {
      this.shareName = null;
    }

    // Returns true if field shareName is set (has been assigned a value) and false otherwise
    public function isSetShareName():Boolean {
      return this.shareName != null;
    }

    public function get username():String {
      return this._username;
    }

    public function set username(username:String):void {
      this._username = username;
    }

    public function unsetUsername():void {
      this.username = null;
    }

    // Returns true if field username is set (has been assigned a value) and false otherwise
    public function isSetUsername():Boolean {
      return this.username != null;
    }

    public function get shardId():String {
      return this._shardId;
    }

    public function set shardId(shardId:String):void {
      this._shardId = shardId;
    }

    public function unsetShardId():void {
      this.shardId = null;
    }

    // Returns true if field shardId is set (has been assigned a value) and false otherwise
    public function isSetShardId():Boolean {
      return this.shardId != null;
    }

    public function get shareKey():String {
      return this._shareKey;
    }

    public function set shareKey(shareKey:String):void {
      this._shareKey = shareKey;
    }

    public function unsetShareKey():void {
      this.shareKey = null;
    }

    // Returns true if field shareKey is set (has been assigned a value) and false otherwise
    public function isSetShareKey():Boolean {
      return this.shareKey != null;
    }

    public function get uri():String {
      return this._uri;
    }

    public function set uri(uri:String):void {
      this._uri = uri;
    }

    public function unsetUri():void {
      this.uri = null;
    }

    // Returns true if field uri is set (has been assigned a value) and false otherwise
    public function isSetUri():Boolean {
      return this.uri != null;
    }

    public function get guid():String {
      return this._guid;
    }

    public function set guid(guid:String):void {
      this._guid = guid;
    }

    public function unsetGuid():void {
      this.guid = null;
    }

    // Returns true if field guid is set (has been assigned a value) and false otherwise
    public function isSetGuid():Boolean {
      return this.guid != null;
    }

    public function get updateSequenceNum():int {
      return this._updateSequenceNum;
    }

    public function set updateSequenceNum(updateSequenceNum:int):void {
      this._updateSequenceNum = updateSequenceNum;
      this.__isset_updateSequenceNum = true;
    }

    public function unsetUpdateSequenceNum():void {
      this.__isset_updateSequenceNum = false;
    }

    // Returns true if field updateSequenceNum is set (has been assigned a value) and false otherwise
    public function isSetUpdateSequenceNum():Boolean {
      return this.__isset_updateSequenceNum;
    }

    public function setFieldValue(fieldID:int, value:*):void {
      switch (fieldID) {
      case SHARENAME:
        if (value == null) {
          unsetShareName();
        } else {
          this.shareName = value;
        }
        break;

      case USERNAME:
        if (value == null) {
          unsetUsername();
        } else {
          this.username = value;
        }
        break;

      case SHARDID:
        if (value == null) {
          unsetShardId();
        } else {
          this.shardId = value;
        }
        break;

      case SHAREKEY:
        if (value == null) {
          unsetShareKey();
        } else {
          this.shareKey = value;
        }
        break;

      case URI:
        if (value == null) {
          unsetUri();
        } else {
          this.uri = value;
        }
        break;

      case GUID:
        if (value == null) {
          unsetGuid();
        } else {
          this.guid = value;
        }
        break;

      case UPDATESEQUENCENUM:
        if (value == null) {
          unsetUpdateSequenceNum();
        } else {
          this.updateSequenceNum = value;
        }
        break;

      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function getFieldValue(fieldID:int):* {
      switch (fieldID) {
      case SHARENAME:
        return this.shareName;
      case USERNAME:
        return this.username;
      case SHARDID:
        return this.shardId;
      case SHAREKEY:
        return this.shareKey;
      case URI:
        return this.uri;
      case GUID:
        return this.guid;
      case UPDATESEQUENCENUM:
        return this.updateSequenceNum;
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
    public function isSet(fieldID:int):Boolean {
      switch (fieldID) {
      case SHARENAME:
        return isSetShareName();
      case USERNAME:
        return isSetUsername();
      case SHARDID:
        return isSetShardId();
      case SHAREKEY:
        return isSetShareKey();
      case URI:
        return isSetUri();
      case GUID:
        return isSetGuid();
      case UPDATESEQUENCENUM:
        return isSetUpdateSequenceNum();
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
          case SHARENAME:
            if (field.type == TType.STRING) {
              this.shareName = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case USERNAME:
            if (field.type == TType.STRING) {
              this.username = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case SHARDID:
            if (field.type == TType.STRING) {
              this.shardId = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case SHAREKEY:
            if (field.type == TType.STRING) {
              this.shareKey = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case URI:
            if (field.type == TType.STRING) {
              this.uri = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case GUID:
            if (field.type == TType.STRING) {
              this.guid = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case UPDATESEQUENCENUM:
            if (field.type == TType.I32) {
              this.updateSequenceNum = iprot.readI32();
              this.__isset_updateSequenceNum = true;
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
      if (this.shareName != null) {
        if (isSetShareName()) {
          oprot.writeFieldBegin(SHARE_NAME_FIELD_DESC);
          oprot.writeString(this.shareName);
          oprot.writeFieldEnd();
        }
      }
      if (this.username != null) {
        if (isSetUsername()) {
          oprot.writeFieldBegin(USERNAME_FIELD_DESC);
          oprot.writeString(this.username);
          oprot.writeFieldEnd();
        }
      }
      if (this.shardId != null) {
        if (isSetShardId()) {
          oprot.writeFieldBegin(SHARD_ID_FIELD_DESC);
          oprot.writeString(this.shardId);
          oprot.writeFieldEnd();
        }
      }
      if (this.shareKey != null) {
        if (isSetShareKey()) {
          oprot.writeFieldBegin(SHARE_KEY_FIELD_DESC);
          oprot.writeString(this.shareKey);
          oprot.writeFieldEnd();
        }
      }
      if (this.uri != null) {
        if (isSetUri()) {
          oprot.writeFieldBegin(URI_FIELD_DESC);
          oprot.writeString(this.uri);
          oprot.writeFieldEnd();
        }
      }
      if (this.guid != null) {
        if (isSetGuid()) {
          oprot.writeFieldBegin(GUID_FIELD_DESC);
          oprot.writeString(this.guid);
          oprot.writeFieldEnd();
        }
      }
      if (isSetUpdateSequenceNum()) {
        oprot.writeFieldBegin(UPDATE_SEQUENCE_NUM_FIELD_DESC);
        oprot.writeI32(this.updateSequenceNum);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

    public function toString():String {
      var ret:String = new String("LinkedNotebook(");
      var first:Boolean = true;

      if (isSetShareName()) {
        ret += "shareName:";
        if (this.shareName == null) {
          ret += "null";
        } else {
          ret += this.shareName;
        }
        first = false;
      }
      if (isSetUsername()) {
        if (!first) ret +=  ", ";
        ret += "username:";
        if (this.username == null) {
          ret += "null";
        } else {
          ret += this.username;
        }
        first = false;
      }
      if (isSetShardId()) {
        if (!first) ret +=  ", ";
        ret += "shardId:";
        if (this.shardId == null) {
          ret += "null";
        } else {
          ret += this.shardId;
        }
        first = false;
      }
      if (isSetShareKey()) {
        if (!first) ret +=  ", ";
        ret += "shareKey:";
        if (this.shareKey == null) {
          ret += "null";
        } else {
          ret += this.shareKey;
        }
        first = false;
      }
      if (isSetUri()) {
        if (!first) ret +=  ", ";
        ret += "uri:";
        if (this.uri == null) {
          ret += "null";
        } else {
          ret += this.uri;
        }
        first = false;
      }
      if (isSetGuid()) {
        if (!first) ret +=  ", ";
        ret += "guid:";
        if (this.guid == null) {
          ret += "null";
        } else {
          ret += this.guid;
        }
        first = false;
      }
      if (isSetUpdateSequenceNum()) {
        if (!first) ret +=  ", ";
        ret += "updateSequenceNum:";
        ret += this.updateSequenceNum;
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
