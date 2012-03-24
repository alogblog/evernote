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

import com.evernote.edam.type.NoteSortOrder;

  /**
   * If a Notebook has been opened to the public, the Notebook will have a
   * reference to one of these structures, which gives the location and optional
   * description of the externally-visible public Notebook.
   * <dl>
   * <dt>uri</dt>
   *   <dd>If this field is present, then the notebook is published for
   *   mass consumption on the Internet under the provided URI, which is
   *   relative to a defined base publishing URI defined by the service.
   *   This field can only be modified via the web service GUI ... publishing
   *   cannot be modified via an offline client.
   *   <br/>
   *   Length:  EDAM_PUBLISHING_URI_LEN_MIN - EDAM_PUBLISHING_URI_LEN_MAX
   *   <br/>
   *   Regex:  EDAM_PUBLISHING_URI_REGEX
   *   </dd>
   * 
   * <dt>order</dt>
   *   <dd>When the notes are publicly displayed, they will be sorted
   *   based on the requested criteria.
   *   </dd>
   * 
   * <dt>ascending</dt>
   *   <dd>If this is set to true, then the public notes will be
   *   displayed in ascending order (e.g. from oldest to newest).  Otherwise,
   *   the notes will be displayed in descending order (e.g. newest to oldest).
   *   </dd>
   * 
   * <dt>publicDescription</dt>
   *   <dd>This field may be used to provide a short
   *   description of the notebook, which may be displayed when (e.g.) the
   *   notebook is shown in a public view.  Can't begin or end with a space.
   *   <br/>
   *   Length:  EDAM_PUBLISHING_DESCRIPTION_LEN_MIN -
   *            EDAM_PUBLISHING_DESCRIPTION_LEN_MAX
   *   <br/>
   *   Regex:  EDAM_PUBLISHING_DESCRIPTION_REGEX
   *   </dd>
   * </dl>
   */
  public class Publishing implements TBase   {
    private static const STRUCT_DESC:TStruct = new TStruct("Publishing");
    private static const URI_FIELD_DESC:TField = new TField("uri", TType.STRING, 1);
    private static const ORDER_FIELD_DESC:TField = new TField("order", TType.I32, 2);
    private static const ASCENDING_FIELD_DESC:TField = new TField("ascending", TType.BOOL, 3);
    private static const PUBLIC_DESCRIPTION_FIELD_DESC:TField = new TField("publicDescription", TType.STRING, 4);

    private var _uri:String;
    public static const URI:int = 1;
    private var _order:int;
    public static const ORDER:int = 2;
    private var _ascending:Boolean;
    public static const ASCENDING:int = 3;
    private var _publicDescription:String;
    public static const PUBLICDESCRIPTION:int = 4;

    private var __isset_order:Boolean = false;
    private var __isset_ascending:Boolean = false;

    public static const metaDataMap:Dictionary = new Dictionary();
    {
      metaDataMap[URI] = new FieldMetaData("uri", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[ORDER] = new FieldMetaData("order", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I32));
      metaDataMap[ASCENDING] = new FieldMetaData("ascending", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[PUBLICDESCRIPTION] = new FieldMetaData("publicDescription", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
    }
    {
      FieldMetaData.addStructMetaDataMap(Publishing, metaDataMap);
    }

    public function Publishing() {
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

    public function get order():int {
      return this._order;
    }

    public function set order(order:int):void {
      this._order = order;
      this.__isset_order = true;
    }

    public function unsetOrder():void {
      this.__isset_order = false;
    }

    // Returns true if field order is set (has been assigned a value) and false otherwise
    public function isSetOrder():Boolean {
      return this.__isset_order;
    }

    public function get ascending():Boolean {
      return this._ascending;
    }

    public function set ascending(ascending:Boolean):void {
      this._ascending = ascending;
      this.__isset_ascending = true;
    }

    public function unsetAscending():void {
      this.__isset_ascending = false;
    }

    // Returns true if field ascending is set (has been assigned a value) and false otherwise
    public function isSetAscending():Boolean {
      return this.__isset_ascending;
    }

    public function get publicDescription():String {
      return this._publicDescription;
    }

    public function set publicDescription(publicDescription:String):void {
      this._publicDescription = publicDescription;
    }

    public function unsetPublicDescription():void {
      this.publicDescription = null;
    }

    // Returns true if field publicDescription is set (has been assigned a value) and false otherwise
    public function isSetPublicDescription():Boolean {
      return this.publicDescription != null;
    }

    public function setFieldValue(fieldID:int, value:*):void {
      switch (fieldID) {
      case URI:
        if (value == null) {
          unsetUri();
        } else {
          this.uri = value;
        }
        break;

      case ORDER:
        if (value == null) {
          unsetOrder();
        } else {
          this.order = value;
        }
        break;

      case ASCENDING:
        if (value == null) {
          unsetAscending();
        } else {
          this.ascending = value;
        }
        break;

      case PUBLICDESCRIPTION:
        if (value == null) {
          unsetPublicDescription();
        } else {
          this.publicDescription = value;
        }
        break;

      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function getFieldValue(fieldID:int):* {
      switch (fieldID) {
      case URI:
        return this.uri;
      case ORDER:
        return this.order;
      case ASCENDING:
        return this.ascending;
      case PUBLICDESCRIPTION:
        return this.publicDescription;
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
    public function isSet(fieldID:int):Boolean {
      switch (fieldID) {
      case URI:
        return isSetUri();
      case ORDER:
        return isSetOrder();
      case ASCENDING:
        return isSetAscending();
      case PUBLICDESCRIPTION:
        return isSetPublicDescription();
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
          case URI:
            if (field.type == TType.STRING) {
              this.uri = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ORDER:
            if (field.type == TType.I32) {
              this.order = iprot.readI32();
              this.__isset_order = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ASCENDING:
            if (field.type == TType.BOOL) {
              this.ascending = iprot.readBool();
              this.__isset_ascending = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case PUBLICDESCRIPTION:
            if (field.type == TType.STRING) {
              this.publicDescription = iprot.readString();
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
      if (this.uri != null) {
        if (isSetUri()) {
          oprot.writeFieldBegin(URI_FIELD_DESC);
          oprot.writeString(this.uri);
          oprot.writeFieldEnd();
        }
      }
      if (isSetOrder()) {
        oprot.writeFieldBegin(ORDER_FIELD_DESC);
        oprot.writeI32(this.order);
        oprot.writeFieldEnd();
      }
      if (isSetAscending()) {
        oprot.writeFieldBegin(ASCENDING_FIELD_DESC);
        oprot.writeBool(this.ascending);
        oprot.writeFieldEnd();
      }
      if (this.publicDescription != null) {
        if (isSetPublicDescription()) {
          oprot.writeFieldBegin(PUBLIC_DESCRIPTION_FIELD_DESC);
          oprot.writeString(this.publicDescription);
          oprot.writeFieldEnd();
        }
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

    public function toString():String {
      var ret:String = new String("Publishing(");
      var first:Boolean = true;

      if (isSetUri()) {
        ret += "uri:";
        if (this.uri == null) {
          ret += "null";
        } else {
          ret += this.uri;
        }
        first = false;
      }
      if (isSetOrder()) {
        if (!first) ret +=  ", ";
        ret += "order:";
        var order_name:String = NoteSortOrder.VALUES_TO_NAMES[this.order];
        if (order_name != null) {
          ret += order_name;
          ret += " (";
        }
        ret += this.order;
        if (order_name != null) {
          ret += ")";
        }
        first = false;
      }
      if (isSetAscending()) {
        if (!first) ret +=  ", ";
        ret += "ascending:";
        ret += this.ascending;
        first = false;
      }
      if (isSetPublicDescription()) {
        if (!first) ret +=  ", ";
        ret += "publicDescription:";
        if (this.publicDescription == null) {
          ret += "null";
        } else {
          ret += this.publicDescription;
        }
        first = false;
      }
      ret += ")";
      return ret;
    }

    public function validate():void {
      // check for required fields
      // check that fields of type enum have valid values
      if (isSetOrder() && !NoteSortOrder.VALID_VALUES.contains(order)){
        throw new TProtocolError(TProtocolError.UNKNOWN, "The field 'order' has been assigned the invalid value " + order);
      }
    }

  }

}
