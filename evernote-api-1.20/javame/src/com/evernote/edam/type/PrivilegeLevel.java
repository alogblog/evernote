/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.evernote.edam.type;

/**
 * This enumeration defines the possible permission levels for a user.
 * Free accounts will have a level of NORMAL and paid Premium accounts
 * will have a level of PREMIUM.
 */
public class PrivilegeLevel implements org.apache.thrift.TEnum {

  public static final PrivilegeLevel NORMAL = new PrivilegeLevel(1);
  public static final PrivilegeLevel PREMIUM = new PrivilegeLevel(3);
  public static final PrivilegeLevel MANAGER = new PrivilegeLevel(7);
  public static final PrivilegeLevel SUPPORT = new PrivilegeLevel(8);
  public static final PrivilegeLevel ADMIN = new PrivilegeLevel(9);

  private final int value;

  private PrivilegeLevel(int value) {
    this.value = value;
  }

  /**
   * Get the integer value of this enum value, as defined in the Thrift IDL.
   */
  public int getValue() {
    return value;
  }

  /**
   * Find a the enum type by its integer value, as defined in the Thrift IDL.
   * @return null if the value is not found.
   */
  public static PrivilegeLevel findByValue(int value) { 
    switch (value) {
      case 1:
        return NORMAL;
      case 3:
        return PREMIUM;
      case 7:
        return MANAGER;
      case 8:
        return SUPPORT;
      case 9:
        return ADMIN;
      default:
        return null;
    }
  }
}
