/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.evernote.edam.type;

import java.util.Hashtable;
import java.util.Vector;
import java.util.Enumeration;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.transport.*;
import org.apache.thrift.protocol.*;

/**
 * An advertisement that may be displayed within an Evernote client.
 * Advertisements are either a snippet of HTML or else they
 * are an image (of type: JPEG, GIF, PNG) with an associated destination URL.
 * 
 * <dl>
 *   <dt>id</dt>
 *   <dd>The unique identifier of this advertisement within Evernote's ad
 *   inventory.
 *   </dd>
 * 
 *   <dt>width</dt>
 *   <dd>This ad should be displayed within a rectangle that is this wide,
 *   in pixels.
 *   </dd>
 * 
 *   <dt>height</dt>
 *   <dd>This ad should be displayed within a rectangle that is this high,
 *   in pixels.
 *   </dd>
 * 
 *   <dt>advertiserName</dt>
 *   <dd>A string containing a readable version of the name of this advertiser.
 *   </dd>
 * 
 *   <dt>imageUrl</dt>
 *   <dd>The location of the image to display for this ad.</dd>
 * 
 *   <dt>destinationUrl</dt>
 *   <dd>When a user clicks on the ad, this is the destination they should be
 *   sent to in a browser.</dd>
 * 
 *   <dt>displaySeconds</dt>
 *   <dd>The number of seconds that the ad should be displayed before it is
 *   replaced with a different ad.</dd>
 * 
 *   <dt>score</dt>
 *   <dd>A numeric indicator of the relative value of this ad, which can be
 *   compared against other ads from the same day.
 *   </dd>
 * 
 *   <dt>image</dt>
 *   <dd>If present, this is the raw image bits of the image file to display
 *   for the ad.  If not present, the imageUrl should be retrieved directly.
 *   </dd>
 * 
 *   <dt>imageMime</dt>
 *   <dd>The MIME type of the 'image' bytes, if those are set.</dd>
 * 
 *   <dt>html</dt>
 *   <dd>The exact HTML to display for this ad, to support rich or external
 *   advertisements.</dd>
 * 
 *   <dt>displayFrequency</dt>
 *   <dd>If this value is set, this is the relatively frequency that this
 *   ad should be displayed in the daily set of ads, relative to a base
 *   frequency of 1.0.  I.e. an ad with a frequency of 3.0 should be displayed
 *   three times more frequently than an ad with a frequency of 1.0.</dd>
 * 
 *   <dt>openInTrunk</dt>
 *   <dd>If true, the ad should be opened in the embedded Trunk window by
 *   clients with Trunk support.</dd>
 * </dl>
 */
public class Ad implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("Ad");

  private static final TField ID_FIELD_DESC = new TField("id", TType.I32, (short)1);
  private static final TField WIDTH_FIELD_DESC = new TField("width", TType.I16, (short)2);
  private static final TField HEIGHT_FIELD_DESC = new TField("height", TType.I16, (short)3);
  private static final TField ADVERTISER_NAME_FIELD_DESC = new TField("advertiserName", TType.STRING, (short)4);
  private static final TField IMAGE_URL_FIELD_DESC = new TField("imageUrl", TType.STRING, (short)5);
  private static final TField DESTINATION_URL_FIELD_DESC = new TField("destinationUrl", TType.STRING, (short)6);
  private static final TField DISPLAY_SECONDS_FIELD_DESC = new TField("displaySeconds", TType.I16, (short)7);
  private static final TField SCORE_FIELD_DESC = new TField("score", TType.DOUBLE, (short)8);
  private static final TField IMAGE_FIELD_DESC = new TField("image", TType.STRING, (short)9);
  private static final TField IMAGE_MIME_FIELD_DESC = new TField("imageMime", TType.STRING, (short)10);
  private static final TField HTML_FIELD_DESC = new TField("html", TType.STRING, (short)11);
  private static final TField DISPLAY_FREQUENCY_FIELD_DESC = new TField("displayFrequency", TType.DOUBLE, (short)12);
  private static final TField OPEN_IN_TRUNK_FIELD_DESC = new TField("openInTrunk", TType.BOOL, (short)13);

  private int id;
  private short width;
  private short height;
  private String advertiserName;
  private String imageUrl;
  private String destinationUrl;
  private short displaySeconds;
  private double score;
  private byte[] image;
  private String imageMime;
  private String html;
  private double displayFrequency;
  private boolean openInTrunk;

  // isset id assignments
  private static final int __ID_ISSET_ID = 0;
  private static final int __WIDTH_ISSET_ID = 1;
  private static final int __HEIGHT_ISSET_ID = 2;
  private static final int __DISPLAYSECONDS_ISSET_ID = 3;
  private static final int __SCORE_ISSET_ID = 4;
  private static final int __DISPLAYFREQUENCY_ISSET_ID = 5;
  private static final int __OPENINTRUNK_ISSET_ID = 6;
  private boolean[] __isset_vector = new boolean[7];

  public Ad() {
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public Ad(Ad other) {
    System.arraycopy(other.__isset_vector, 0, __isset_vector, 0, other.__isset_vector.length);
    this.id = other.id;
    this.width = other.width;
    this.height = other.height;
    if (other.isSetAdvertiserName()) {
      this.advertiserName = other.advertiserName;
    }
    if (other.isSetImageUrl()) {
      this.imageUrl = other.imageUrl;
    }
    if (other.isSetDestinationUrl()) {
      this.destinationUrl = other.destinationUrl;
    }
    this.displaySeconds = other.displaySeconds;
    this.score = other.score;
    if (other.isSetImage()) {
      this.image = new byte[other.image.length];
      System.arraycopy(other.image, 0, image, 0, other.image.length);
    }
    if (other.isSetImageMime()) {
      this.imageMime = other.imageMime;
    }
    if (other.isSetHtml()) {
      this.html = other.html;
    }
    this.displayFrequency = other.displayFrequency;
    this.openInTrunk = other.openInTrunk;
  }

  public Ad deepCopy() {
    return new Ad(this);
  }

  public Ad clone() {
    return new Ad(this);
  }

  public void clear() {
    setIdIsSet(false);
    this.id = 0;
    setWidthIsSet(false);
    this.width = 0;
    setHeightIsSet(false);
    this.height = 0;
    this.advertiserName = null;
    this.imageUrl = null;
    this.destinationUrl = null;
    setDisplaySecondsIsSet(false);
    this.displaySeconds = 0;
    setScoreIsSet(false);
    this.score = 0.0;
    this.image = null;
    this.imageMime = null;
    this.html = null;
    setDisplayFrequencyIsSet(false);
    this.displayFrequency = 0.0;
    setOpenInTrunkIsSet(false);
    this.openInTrunk = false;
  }

  public int getId() {
    return this.id;
  }

  public void setId(int id) {
    this.id = id;
    setIdIsSet(true);
  }

  public void unsetId() {
    __isset_vector[__ID_ISSET_ID] = false;
  }

  /** Returns true if field id is set (has been asigned a value) and false otherwise */
  public boolean isSetId() {
    return __isset_vector[__ID_ISSET_ID];
  }

  public void setIdIsSet(boolean value) {
    __isset_vector[__ID_ISSET_ID] = value;
  }

  public short getWidth() {
    return this.width;
  }

  public void setWidth(short width) {
    this.width = width;
    setWidthIsSet(true);
  }

  public void unsetWidth() {
    __isset_vector[__WIDTH_ISSET_ID] = false;
  }

  /** Returns true if field width is set (has been asigned a value) and false otherwise */
  public boolean isSetWidth() {
    return __isset_vector[__WIDTH_ISSET_ID];
  }

  public void setWidthIsSet(boolean value) {
    __isset_vector[__WIDTH_ISSET_ID] = value;
  }

  public short getHeight() {
    return this.height;
  }

  public void setHeight(short height) {
    this.height = height;
    setHeightIsSet(true);
  }

  public void unsetHeight() {
    __isset_vector[__HEIGHT_ISSET_ID] = false;
  }

  /** Returns true if field height is set (has been asigned a value) and false otherwise */
  public boolean isSetHeight() {
    return __isset_vector[__HEIGHT_ISSET_ID];
  }

  public void setHeightIsSet(boolean value) {
    __isset_vector[__HEIGHT_ISSET_ID] = value;
  }

  public String getAdvertiserName() {
    return this.advertiserName;
  }

  public void setAdvertiserName(String advertiserName) {
    this.advertiserName = advertiserName;
  }

  public void unsetAdvertiserName() {
    this.advertiserName = null;
  }

  /** Returns true if field advertiserName is set (has been asigned a value) and false otherwise */
  public boolean isSetAdvertiserName() {
    return this.advertiserName != null;
  }

  public void setAdvertiserNameIsSet(boolean value) {
    if (!value) {
      this.advertiserName = null;
    }
  }

  public String getImageUrl() {
    return this.imageUrl;
  }

  public void setImageUrl(String imageUrl) {
    this.imageUrl = imageUrl;
  }

  public void unsetImageUrl() {
    this.imageUrl = null;
  }

  /** Returns true if field imageUrl is set (has been asigned a value) and false otherwise */
  public boolean isSetImageUrl() {
    return this.imageUrl != null;
  }

  public void setImageUrlIsSet(boolean value) {
    if (!value) {
      this.imageUrl = null;
    }
  }

  public String getDestinationUrl() {
    return this.destinationUrl;
  }

  public void setDestinationUrl(String destinationUrl) {
    this.destinationUrl = destinationUrl;
  }

  public void unsetDestinationUrl() {
    this.destinationUrl = null;
  }

  /** Returns true if field destinationUrl is set (has been asigned a value) and false otherwise */
  public boolean isSetDestinationUrl() {
    return this.destinationUrl != null;
  }

  public void setDestinationUrlIsSet(boolean value) {
    if (!value) {
      this.destinationUrl = null;
    }
  }

  public short getDisplaySeconds() {
    return this.displaySeconds;
  }

  public void setDisplaySeconds(short displaySeconds) {
    this.displaySeconds = displaySeconds;
    setDisplaySecondsIsSet(true);
  }

  public void unsetDisplaySeconds() {
    __isset_vector[__DISPLAYSECONDS_ISSET_ID] = false;
  }

  /** Returns true if field displaySeconds is set (has been asigned a value) and false otherwise */
  public boolean isSetDisplaySeconds() {
    return __isset_vector[__DISPLAYSECONDS_ISSET_ID];
  }

  public void setDisplaySecondsIsSet(boolean value) {
    __isset_vector[__DISPLAYSECONDS_ISSET_ID] = value;
  }

  public double getScore() {
    return this.score;
  }

  public void setScore(double score) {
    this.score = score;
    setScoreIsSet(true);
  }

  public void unsetScore() {
    __isset_vector[__SCORE_ISSET_ID] = false;
  }

  /** Returns true if field score is set (has been asigned a value) and false otherwise */
  public boolean isSetScore() {
    return __isset_vector[__SCORE_ISSET_ID];
  }

  public void setScoreIsSet(boolean value) {
    __isset_vector[__SCORE_ISSET_ID] = value;
  }

  public byte[] getImage() {
    return this.image;
  }

  public void setImage(byte[] image) {
    this.image = image;
  }

  public void unsetImage() {
    this.image = null;
  }

  /** Returns true if field image is set (has been asigned a value) and false otherwise */
  public boolean isSetImage() {
    return this.image != null;
  }

  public void setImageIsSet(boolean value) {
    if (!value) {
      this.image = null;
    }
  }

  public String getImageMime() {
    return this.imageMime;
  }

  public void setImageMime(String imageMime) {
    this.imageMime = imageMime;
  }

  public void unsetImageMime() {
    this.imageMime = null;
  }

  /** Returns true if field imageMime is set (has been asigned a value) and false otherwise */
  public boolean isSetImageMime() {
    return this.imageMime != null;
  }

  public void setImageMimeIsSet(boolean value) {
    if (!value) {
      this.imageMime = null;
    }
  }

  public String getHtml() {
    return this.html;
  }

  public void setHtml(String html) {
    this.html = html;
  }

  public void unsetHtml() {
    this.html = null;
  }

  /** Returns true if field html is set (has been asigned a value) and false otherwise */
  public boolean isSetHtml() {
    return this.html != null;
  }

  public void setHtmlIsSet(boolean value) {
    if (!value) {
      this.html = null;
    }
  }

  public double getDisplayFrequency() {
    return this.displayFrequency;
  }

  public void setDisplayFrequency(double displayFrequency) {
    this.displayFrequency = displayFrequency;
    setDisplayFrequencyIsSet(true);
  }

  public void unsetDisplayFrequency() {
    __isset_vector[__DISPLAYFREQUENCY_ISSET_ID] = false;
  }

  /** Returns true if field displayFrequency is set (has been asigned a value) and false otherwise */
  public boolean isSetDisplayFrequency() {
    return __isset_vector[__DISPLAYFREQUENCY_ISSET_ID];
  }

  public void setDisplayFrequencyIsSet(boolean value) {
    __isset_vector[__DISPLAYFREQUENCY_ISSET_ID] = value;
  }

  public boolean isOpenInTrunk() {
    return this.openInTrunk;
  }

  public void setOpenInTrunk(boolean openInTrunk) {
    this.openInTrunk = openInTrunk;
    setOpenInTrunkIsSet(true);
  }

  public void unsetOpenInTrunk() {
    __isset_vector[__OPENINTRUNK_ISSET_ID] = false;
  }

  /** Returns true if field openInTrunk is set (has been asigned a value) and false otherwise */
  public boolean isSetOpenInTrunk() {
    return __isset_vector[__OPENINTRUNK_ISSET_ID];
  }

  public void setOpenInTrunkIsSet(boolean value) {
    __isset_vector[__OPENINTRUNK_ISSET_ID] = value;
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof Ad)
      return this.equals((Ad)that);
    return false;
  }

  public boolean equals(Ad that) {
    if (that == null)
      return false;

    boolean this_present_id = true && this.isSetId();
    boolean that_present_id = true && that.isSetId();
    if (this_present_id || that_present_id) {
      if (!(this_present_id && that_present_id))
        return false;
      if (this.id != that.id)
        return false;
    }

    boolean this_present_width = true && this.isSetWidth();
    boolean that_present_width = true && that.isSetWidth();
    if (this_present_width || that_present_width) {
      if (!(this_present_width && that_present_width))
        return false;
      if (this.width != that.width)
        return false;
    }

    boolean this_present_height = true && this.isSetHeight();
    boolean that_present_height = true && that.isSetHeight();
    if (this_present_height || that_present_height) {
      if (!(this_present_height && that_present_height))
        return false;
      if (this.height != that.height)
        return false;
    }

    boolean this_present_advertiserName = true && this.isSetAdvertiserName();
    boolean that_present_advertiserName = true && that.isSetAdvertiserName();
    if (this_present_advertiserName || that_present_advertiserName) {
      if (!(this_present_advertiserName && that_present_advertiserName))
        return false;
      if (!this.advertiserName.equals(that.advertiserName))
        return false;
    }

    boolean this_present_imageUrl = true && this.isSetImageUrl();
    boolean that_present_imageUrl = true && that.isSetImageUrl();
    if (this_present_imageUrl || that_present_imageUrl) {
      if (!(this_present_imageUrl && that_present_imageUrl))
        return false;
      if (!this.imageUrl.equals(that.imageUrl))
        return false;
    }

    boolean this_present_destinationUrl = true && this.isSetDestinationUrl();
    boolean that_present_destinationUrl = true && that.isSetDestinationUrl();
    if (this_present_destinationUrl || that_present_destinationUrl) {
      if (!(this_present_destinationUrl && that_present_destinationUrl))
        return false;
      if (!this.destinationUrl.equals(that.destinationUrl))
        return false;
    }

    boolean this_present_displaySeconds = true && this.isSetDisplaySeconds();
    boolean that_present_displaySeconds = true && that.isSetDisplaySeconds();
    if (this_present_displaySeconds || that_present_displaySeconds) {
      if (!(this_present_displaySeconds && that_present_displaySeconds))
        return false;
      if (this.displaySeconds != that.displaySeconds)
        return false;
    }

    boolean this_present_score = true && this.isSetScore();
    boolean that_present_score = true && that.isSetScore();
    if (this_present_score || that_present_score) {
      if (!(this_present_score && that_present_score))
        return false;
      if (this.score != that.score)
        return false;
    }

    boolean this_present_image = true && this.isSetImage();
    boolean that_present_image = true && that.isSetImage();
    if (this_present_image || that_present_image) {
      if (!(this_present_image && that_present_image))
        return false;
      if (TBaseHelper.compareTo(this.image, that.image) != 0)
        return false;
    }

    boolean this_present_imageMime = true && this.isSetImageMime();
    boolean that_present_imageMime = true && that.isSetImageMime();
    if (this_present_imageMime || that_present_imageMime) {
      if (!(this_present_imageMime && that_present_imageMime))
        return false;
      if (!this.imageMime.equals(that.imageMime))
        return false;
    }

    boolean this_present_html = true && this.isSetHtml();
    boolean that_present_html = true && that.isSetHtml();
    if (this_present_html || that_present_html) {
      if (!(this_present_html && that_present_html))
        return false;
      if (!this.html.equals(that.html))
        return false;
    }

    boolean this_present_displayFrequency = true && this.isSetDisplayFrequency();
    boolean that_present_displayFrequency = true && that.isSetDisplayFrequency();
    if (this_present_displayFrequency || that_present_displayFrequency) {
      if (!(this_present_displayFrequency && that_present_displayFrequency))
        return false;
      if (this.displayFrequency != that.displayFrequency)
        return false;
    }

    boolean this_present_openInTrunk = true && this.isSetOpenInTrunk();
    boolean that_present_openInTrunk = true && that.isSetOpenInTrunk();
    if (this_present_openInTrunk || that_present_openInTrunk) {
      if (!(this_present_openInTrunk && that_present_openInTrunk))
        return false;
      if (this.openInTrunk != that.openInTrunk)
        return false;
    }

    return true;
  }

  public int hashCode() {
    return 0;
  }

  public int compareTo(Object otherObject) {
    if (!getClass().equals(otherObject.getClass())) {
      return getClass().getName().compareTo(otherObject.getClass().getName());
    }

    Ad other = (Ad)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetId(), other.isSetId());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetId()) {
      lastComparison = TBaseHelper.compareTo(this.id, other.id);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetWidth(), other.isSetWidth());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetWidth()) {
      lastComparison = TBaseHelper.compareTo(this.width, other.width);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetHeight(), other.isSetHeight());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetHeight()) {
      lastComparison = TBaseHelper.compareTo(this.height, other.height);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetAdvertiserName(), other.isSetAdvertiserName());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetAdvertiserName()) {
      lastComparison = TBaseHelper.compareTo(this.advertiserName, other.advertiserName);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetImageUrl(), other.isSetImageUrl());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetImageUrl()) {
      lastComparison = TBaseHelper.compareTo(this.imageUrl, other.imageUrl);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetDestinationUrl(), other.isSetDestinationUrl());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetDestinationUrl()) {
      lastComparison = TBaseHelper.compareTo(this.destinationUrl, other.destinationUrl);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetDisplaySeconds(), other.isSetDisplaySeconds());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetDisplaySeconds()) {
      lastComparison = TBaseHelper.compareTo(this.displaySeconds, other.displaySeconds);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetScore(), other.isSetScore());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetScore()) {
      lastComparison = TBaseHelper.compareTo(this.score, other.score);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetImage(), other.isSetImage());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetImage()) {
      lastComparison = TBaseHelper.compareTo(this.image, other.image);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetImageMime(), other.isSetImageMime());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetImageMime()) {
      lastComparison = TBaseHelper.compareTo(this.imageMime, other.imageMime);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetHtml(), other.isSetHtml());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetHtml()) {
      lastComparison = TBaseHelper.compareTo(this.html, other.html);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetDisplayFrequency(), other.isSetDisplayFrequency());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetDisplayFrequency()) {
      lastComparison = TBaseHelper.compareTo(this.displayFrequency, other.displayFrequency);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetOpenInTrunk(), other.isSetOpenInTrunk());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetOpenInTrunk()) {
      lastComparison = TBaseHelper.compareTo(this.openInTrunk, other.openInTrunk);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    return 0;
  }

  public void read(TProtocol iprot) throws TException {
    TField field;
    iprot.readStructBegin();
    while (true)
    {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) { 
        break;
      }
      switch (field.id) {
        case 1: // ID
          if (field.type == TType.I32) {
            this.id = iprot.readI32();
            setIdIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 2: // WIDTH
          if (field.type == TType.I16) {
            this.width = iprot.readI16();
            setWidthIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 3: // HEIGHT
          if (field.type == TType.I16) {
            this.height = iprot.readI16();
            setHeightIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 4: // ADVERTISER_NAME
          if (field.type == TType.STRING) {
            this.advertiserName = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 5: // IMAGE_URL
          if (field.type == TType.STRING) {
            this.imageUrl = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 6: // DESTINATION_URL
          if (field.type == TType.STRING) {
            this.destinationUrl = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 7: // DISPLAY_SECONDS
          if (field.type == TType.I16) {
            this.displaySeconds = iprot.readI16();
            setDisplaySecondsIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 8: // SCORE
          if (field.type == TType.DOUBLE) {
            this.score = iprot.readDouble();
            setScoreIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 9: // IMAGE
          if (field.type == TType.STRING) {
            this.image = iprot.readBinary();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 10: // IMAGE_MIME
          if (field.type == TType.STRING) {
            this.imageMime = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 11: // HTML
          if (field.type == TType.STRING) {
            this.html = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 12: // DISPLAY_FREQUENCY
          if (field.type == TType.DOUBLE) {
            this.displayFrequency = iprot.readDouble();
            setDisplayFrequencyIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 13: // OPEN_IN_TRUNK
          if (field.type == TType.BOOL) {
            this.openInTrunk = iprot.readBool();
            setOpenInTrunkIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();
    validate();
  }

  public void write(TProtocol oprot) throws TException {
    validate();

    oprot.writeStructBegin(STRUCT_DESC);
    if (isSetId()) {
      oprot.writeFieldBegin(ID_FIELD_DESC);
      oprot.writeI32(this.id);
      oprot.writeFieldEnd();
    }
    if (isSetWidth()) {
      oprot.writeFieldBegin(WIDTH_FIELD_DESC);
      oprot.writeI16(this.width);
      oprot.writeFieldEnd();
    }
    if (isSetHeight()) {
      oprot.writeFieldBegin(HEIGHT_FIELD_DESC);
      oprot.writeI16(this.height);
      oprot.writeFieldEnd();
    }
    if (this.advertiserName != null) {
      if (isSetAdvertiserName()) {
        oprot.writeFieldBegin(ADVERTISER_NAME_FIELD_DESC);
        oprot.writeString(this.advertiserName);
        oprot.writeFieldEnd();
      }
    }
    if (this.imageUrl != null) {
      if (isSetImageUrl()) {
        oprot.writeFieldBegin(IMAGE_URL_FIELD_DESC);
        oprot.writeString(this.imageUrl);
        oprot.writeFieldEnd();
      }
    }
    if (this.destinationUrl != null) {
      if (isSetDestinationUrl()) {
        oprot.writeFieldBegin(DESTINATION_URL_FIELD_DESC);
        oprot.writeString(this.destinationUrl);
        oprot.writeFieldEnd();
      }
    }
    if (isSetDisplaySeconds()) {
      oprot.writeFieldBegin(DISPLAY_SECONDS_FIELD_DESC);
      oprot.writeI16(this.displaySeconds);
      oprot.writeFieldEnd();
    }
    if (isSetScore()) {
      oprot.writeFieldBegin(SCORE_FIELD_DESC);
      oprot.writeDouble(this.score);
      oprot.writeFieldEnd();
    }
    if (this.image != null) {
      if (isSetImage()) {
        oprot.writeFieldBegin(IMAGE_FIELD_DESC);
        oprot.writeBinary(this.image);
        oprot.writeFieldEnd();
      }
    }
    if (this.imageMime != null) {
      if (isSetImageMime()) {
        oprot.writeFieldBegin(IMAGE_MIME_FIELD_DESC);
        oprot.writeString(this.imageMime);
        oprot.writeFieldEnd();
      }
    }
    if (this.html != null) {
      if (isSetHtml()) {
        oprot.writeFieldBegin(HTML_FIELD_DESC);
        oprot.writeString(this.html);
        oprot.writeFieldEnd();
      }
    }
    if (isSetDisplayFrequency()) {
      oprot.writeFieldBegin(DISPLAY_FREQUENCY_FIELD_DESC);
      oprot.writeDouble(this.displayFrequency);
      oprot.writeFieldEnd();
    }
    if (isSetOpenInTrunk()) {
      oprot.writeFieldBegin(OPEN_IN_TRUNK_FIELD_DESC);
      oprot.writeBool(this.openInTrunk);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("Ad(");
    boolean first = true;

    if (isSetId()) {
      sb.append("id:");
      sb.append(this.id);
      first = false;
    }
    if (isSetWidth()) {
      if (!first) sb.append(", ");
      sb.append("width:");
      sb.append(this.width);
      first = false;
    }
    if (isSetHeight()) {
      if (!first) sb.append(", ");
      sb.append("height:");
      sb.append(this.height);
      first = false;
    }
    if (isSetAdvertiserName()) {
      if (!first) sb.append(", ");
      sb.append("advertiserName:");
      if (this.advertiserName == null) {
        sb.append("null");
      } else {
        sb.append(this.advertiserName);
      }
      first = false;
    }
    if (isSetImageUrl()) {
      if (!first) sb.append(", ");
      sb.append("imageUrl:");
      if (this.imageUrl == null) {
        sb.append("null");
      } else {
        sb.append(this.imageUrl);
      }
      first = false;
    }
    if (isSetDestinationUrl()) {
      if (!first) sb.append(", ");
      sb.append("destinationUrl:");
      if (this.destinationUrl == null) {
        sb.append("null");
      } else {
        sb.append(this.destinationUrl);
      }
      first = false;
    }
    if (isSetDisplaySeconds()) {
      if (!first) sb.append(", ");
      sb.append("displaySeconds:");
      sb.append(this.displaySeconds);
      first = false;
    }
    if (isSetScore()) {
      if (!first) sb.append(", ");
      sb.append("score:");
      sb.append(this.score);
      first = false;
    }
    if (isSetImage()) {
      if (!first) sb.append(", ");
      sb.append("image:");
      if (this.image == null) {
        sb.append("null");
      } else {
        TBaseHelper.toString(this.image, sb);
      }
      first = false;
    }
    if (isSetImageMime()) {
      if (!first) sb.append(", ");
      sb.append("imageMime:");
      if (this.imageMime == null) {
        sb.append("null");
      } else {
        sb.append(this.imageMime);
      }
      first = false;
    }
    if (isSetHtml()) {
      if (!first) sb.append(", ");
      sb.append("html:");
      if (this.html == null) {
        sb.append("null");
      } else {
        sb.append(this.html);
      }
      first = false;
    }
    if (isSetDisplayFrequency()) {
      if (!first) sb.append(", ");
      sb.append("displayFrequency:");
      sb.append(this.displayFrequency);
      first = false;
    }
    if (isSetOpenInTrunk()) {
      if (!first) sb.append(", ");
      sb.append("openInTrunk:");
      sb.append(this.openInTrunk);
      first = false;
    }
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
  }

}

