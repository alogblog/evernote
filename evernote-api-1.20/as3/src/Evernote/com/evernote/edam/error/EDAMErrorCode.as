/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.evernote.edam.error 
{
import org.apache.thrift.Set;
import flash.utils.Dictionary;
  public class EDAMErrorCode   {
    public static const UNKNOWN:int = 1;
    public static const BAD_DATA_FORMAT:int = 2;
    public static const PERMISSION_DENIED:int = 3;
    public static const INTERNAL_ERROR:int = 4;
    public static const DATA_REQUIRED:int = 5;
    public static const LIMIT_REACHED:int = 6;
    public static const QUOTA_REACHED:int = 7;
    public static const INVALID_AUTH:int = 8;
    public static const AUTH_EXPIRED:int = 9;
    public static const DATA_CONFLICT:int = 10;
    public static const ENML_VALIDATION:int = 11;
    public static const SHARD_UNAVAILABLE:int = 12;

    public static const VALID_VALUES:Set = new Set(UNKNOWN, BAD_DATA_FORMAT, PERMISSION_DENIED, INTERNAL_ERROR, DATA_REQUIRED, LIMIT_REACHED, QUOTA_REACHED, INVALID_AUTH, AUTH_EXPIRED, DATA_CONFLICT, ENML_VALIDATION, SHARD_UNAVAILABLE);
    public static const VALUES_TO_NAMES:Dictionary = new Dictionary();
    {
      VALUES_TO_NAMES[UNKNOWN] = "UNKNOWN";
      VALUES_TO_NAMES[BAD_DATA_FORMAT] = "BAD_DATA_FORMAT";
      VALUES_TO_NAMES[PERMISSION_DENIED] = "PERMISSION_DENIED";
      VALUES_TO_NAMES[INTERNAL_ERROR] = "INTERNAL_ERROR";
      VALUES_TO_NAMES[DATA_REQUIRED] = "DATA_REQUIRED";
      VALUES_TO_NAMES[LIMIT_REACHED] = "LIMIT_REACHED";
      VALUES_TO_NAMES[QUOTA_REACHED] = "QUOTA_REACHED";
      VALUES_TO_NAMES[INVALID_AUTH] = "INVALID_AUTH";
      VALUES_TO_NAMES[AUTH_EXPIRED] = "AUTH_EXPIRED";
      VALUES_TO_NAMES[DATA_CONFLICT] = "DATA_CONFLICT";
      VALUES_TO_NAMES[ENML_VALIDATION] = "ENML_VALIDATION";
      VALUES_TO_NAMES[SHARD_UNAVAILABLE] = "SHARD_UNAVAILABLE";

    }
  }
}
