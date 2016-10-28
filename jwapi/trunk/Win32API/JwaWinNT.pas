{******************************************************************************}
{                                                                              }
{ Windows Types API interface Unit for Object Pascal                           }
{                                                                              }
{ Portions created by Microsoft are Copyright (C) 1995-2001 Microsoft          }
{ Corporation. All Rights Reserved.                                            }
{                                                                              }
{ The original file is: winnt.h, released August 2001. The original Pascal     }
{ code is: WinNT.pas, released December 2000. The initial developer of the     }
{ Pascal code is Marcel van Brakel (brakelm att chello dott nl).               }
{                                                                              }
{ Portions created by Marcel van Brakel are Copyright (C) 1999-2001            }
{ Marcel van Brakel. All Rights Reserved.                                      }
{                                                                              }
{ Obtained through: Joint Endeavour of Delphi Innovators (Project JEDI)        }
{                                                                              }
{ You may retrieve the latest version of this file at the Project JEDI         }
{ APILIB home page, located at http://jedi-apilib.sourceforge.net              }
{                                                                              }
{ The contents of this file are used with permission, subject to the Mozilla   }
{ Public License Version 1.1 (the "License"); you may not use this file except }
{ in compliance with the License. You may obtain a copy of the License at      }
{ http://www.mozilla.org/MPL/MPL-1.1.html                                      }
{                                                                              }
{ Software distributed under the License is distributed on an "AS IS" basis,   }
{ WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for }
{ the specific language governing rights and limitations under the License.    }
{                                                                              }
{ Alternatively, the contents of this file may be used under the terms of the  }
{ GNU Lesser General Public License (the  "LGPL License"), in which case the   }
{ provisions of the LGPL License are applicable instead of those above.        }
{ If you wish to allow use of your version of this file only under the terms   }
{ of the LGPL License and not to allow others to use your version of this file }
{ under the MPL, indicate your decision by deleting  the provisions above and  }
{ replace  them with the notice and other provisions required by the LGPL      }
{ License.  If you do not delete the provisions above, a recipient may use     }
{ your version of this file under either the MPL or the LGPL License.          }
{                                                                              }
{ For more information about the LGPL: http://www.gnu.org/copyleft/lesser.html }
{                                                                              }
{******************************************************************************}

// $Id: JwaWinNT.pas,v 1.15 2007/10/20 18:08:49 dezipaitor Exp $
{$IFNDEF JWA_OMIT_SECTIONS}
unit JwaWinNT;

{$WEAKPACKAGEUNIT}
{$ENDIF JWA_OMIT_SECTIONS}

{$HPPEMIT ''}
{$HPPEMIT '#include "winnt.h"'}
{$HPPEMIT ''}
{$HPPEMIT 'typedef PACL *PPACL'}
{$HPPEMIT 'typedef PSID *PPSID'}
{$HPPEMIT 'typedef PSECURITY_DESCRIPTOR *PPSECURITY_DESCRIPTOR'}
{$HPPEMIT ''}

{$IFNDEF JWA_OMIT_SECTIONS}
{$I ..\Includes\JediAPILib.inc}

interface

uses
  JwaWinType;
{$ENDIF JWA_OMIT_SECTIONS}

{$IFNDEF JWA_IMPLEMENTATIONSECTION}
const
  MAXBYTE  = BYTE($ff);
  {$EXTERNALSYM MAXBYTE}
  MAXWORD  = WORD($ffff);
  {$EXTERNALSYM MAXWORD}
  MAXDWORD = DWORD($ffffffff);
  {$EXTERNALSYM MAXDWORD}


{$IFNDEF JWA_INCLUDEMODE}
const
  VER_SERVER_NT                      = DWORD($80000000);
  {$EXTERNALSYM VER_SERVER_NT}
  VER_WORKSTATION_NT                 = $40000000;
  {$EXTERNALSYM VER_WORKSTATION_NT}
  VER_SUITE_SMALLBUSINESS            = $00000001;
  {$EXTERNALSYM VER_SUITE_SMALLBUSINESS}
  VER_SUITE_ENTERPRISE               = $00000002;
  {$EXTERNALSYM VER_SUITE_ENTERPRISE}
  VER_SUITE_BACKOFFICE               = $00000004;
  {$EXTERNALSYM VER_SUITE_BACKOFFICE}
  VER_SUITE_COMMUNICATIONS           = $00000008;
  {$EXTERNALSYM VER_SUITE_COMMUNICATIONS}
  VER_SUITE_TERMINAL                 = $00000010;
  {$EXTERNALSYM VER_SUITE_TERMINAL}
  VER_SUITE_SMALLBUSINESS_RESTRICTED = $00000020;
  {$EXTERNALSYM VER_SUITE_SMALLBUSINESS_RESTRICTED}
  VER_SUITE_EMBEDDEDNT               = $00000040;
  {$EXTERNALSYM VER_SUITE_EMBEDDEDNT}
  VER_SUITE_DATACENTER               = $00000080;
  {$EXTERNALSYM VER_SUITE_DATACENTER}
  VER_SUITE_SINGLEUSERTS             = $00000100;
  {$EXTERNALSYM VER_SUITE_SINGLEUSERTS}
  VER_SUITE_PERSONAL                 = $00000200;
  {$EXTERNALSYM VER_SUITE_PERSONAL}
  VER_SUITE_BLADE                    = $00000400;
  {$EXTERNALSYM VER_SUITE_BLADE}
{$ENDIF JWA_INCLUDEMODE}
  VER_SUITE_EMBEDDED_RESTRICTED      = $00000800;
  {$EXTERNALSYM VER_SUITE_EMBEDDED_RESTRICTED}
  VER_SUITE_SECURITY_APPLIANCE       = $00001000;
  {$EXTERNALSYM VER_SUITE_SECURITY_APPLIANCE}
  VER_SUITE_STORAGE_SERVER            = $00002000;
  {$EXTERNALSYM VER_SUITE_STORAGE_SERVER}
  VER_SUITE_COMPUTE_SERVER            = $00004000;
  {$EXTERNALSYM VER_SUITE_COMPUTE_SERVER}
  VER_SUITE_WH_SERVER                 = $00008000;
  {$EXTERNALSYM VER_SUITE_WH_SERVER}



//
// Product types
// This list grows with each OS release.
//
// There is no ordering of values to ensure callers
// do an equality test i.e. greater-than and less-than
// comparisons are not useful.
//
// NOTE: Values in this list should never be deleted.
//       When a product-type 'X' gets dropped from a
//       OS release onwards, the value of 'X' continues
//       to be used in the mapping table of GetProductInfo.
//

  PRODUCT_UNDEFINED                   = $00000000;
  {$EXTERNALSYM PRODUCT_UNDEFINED}

  PRODUCT_ULTIMATE                    = $00000001;
  {$EXTERNALSYM PRODUCT_ULTIMATE}
  PRODUCT_HOME_BASIC                  = $00000002;
  {$EXTERNALSYM PRODUCT_HOME_BASIC}
  PRODUCT_HOME_PREMIUM                = $00000003;
  {$EXTERNALSYM PRODUCT_HOME_PREMIUM}
  PRODUCT_ENTERPRISE                  = $00000004;
  {$EXTERNALSYM PRODUCT_ENTERPRISE}
  PRODUCT_HOME_BASIC_N                = $00000005;
  {$EXTERNALSYM PRODUCT_HOME_BASIC_N}
  PRODUCT_BUSINESS                    = $00000006;
  {$EXTERNALSYM PRODUCT_BUSINESS}
  PRODUCT_STANDARD_SERVER             = $00000007;
  {$EXTERNALSYM PRODUCT_STANDARD_SERVER}
  PRODUCT_DATACENTER_SERVER           = $00000008;
  {$EXTERNALSYM PRODUCT_DATACENTER_SERVER}
  PRODUCT_SMALLBUSINESS_SERVER        = $00000009;
  {$EXTERNALSYM PRODUCT_SMALLBUSINESS_SERVER}
  PRODUCT_ENTERPRISE_SERVER           = $0000000A;
  {$EXTERNALSYM PRODUCT_ENTERPRISE_SERVER}
  PRODUCT_STARTER                     = $0000000B;
  {$EXTERNALSYM PRODUCT_STARTER}
  PRODUCT_DATACENTER_SERVER_CORE      = $0000000C;
  {$EXTERNALSYM PRODUCT_DATACENTER_SERVER_CORE}
  PRODUCT_STANDARD_SERVER_CORE        = $0000000D;
  {$EXTERNALSYM PRODUCT_STANDARD_SERVER_CORE}
  PRODUCT_ENTERPRISE_SERVER_CORE      = $0000000E;
  {$EXTERNALSYM PRODUCT_ENTERPRISE_SERVER_CORE}
  PRODUCT_ENTERPRISE_SERVER_IA64      = $0000000F;
  {$EXTERNALSYM PRODUCT_ENTERPRISE_SERVER_IA64}
  PRODUCT_BUSINESS_N                  = $00000010;
  {$EXTERNALSYM PRODUCT_BUSINESS_N}
  PRODUCT_WEB_SERVER                  = $00000011;
  {$EXTERNALSYM PRODUCT_WEB_SERVER}
  PRODUCT_CLUSTER_SERVER              = $00000012;
  {$EXTERNALSYM PRODUCT_CLUSTER_SERVER}
  PRODUCT_HOME_SERVER                 = $00000013;
  {$EXTERNALSYM PRODUCT_HOME_SERVER}
  PRODUCT_STORAGE_EXPRESS_SERVER      = $00000014;
  {$EXTERNALSYM PRODUCT_STORAGE_EXPRESS_SERVER}
  PRODUCT_STORAGE_STANDARD_SERVER     = $00000015;
  {$EXTERNALSYM PRODUCT_STORAGE_STANDARD_SERVER}
  PRODUCT_STORAGE_WORKGROUP_SERVER    = $00000016;
  {$EXTERNALSYM PRODUCT_STORAGE_WORKGROUP_SERVER}
  PRODUCT_STORAGE_ENTERPRISE_SERVER   = $00000017;
  {$EXTERNALSYM PRODUCT_STORAGE_ENTERPRISE_SERVER}
  PRODUCT_SERVER_FOR_SMALLBUSINESS    = $00000018;
  {$EXTERNALSYM PRODUCT_SERVER_FOR_SMALLBUSINESS}
  PRODUCT_SMALLBUSINESS_SERVER_PREMIUM= $00000019;
  {$EXTERNALSYM PRODUCT_SMALLBUSINESS_SERVER_PREMIUM}
  PRODUCT_HOME_PREMIUM_N              = $0000001A;
  {$EXTERNALSYM PRODUCT_HOME_PREMIUM_N}
  PRODUCT_ENTERPRISE_N                = $0000001B;
  {$EXTERNALSYM PRODUCT_ENTERPRISE_N}
  PRODUCT_ULTIMATE_N                  = $0000001C;
  {$EXTERNALSYM PRODUCT_ULTIMATE_N}
  PRODUCT_WEB_SERVER_CORE             = $0000001D;
  {$EXTERNALSYM PRODUCT_WEB_SERVER_CORE}
  PRODUCT_MEDIUMBUSINESS_SERVER_MANAGEMENT= $0000001E;
  {$EXTERNALSYM PRODUCT_MEDIUMBUSINESS_SERVER_MANAGEMENT}
  PRODUCT_MEDIUMBUSINESS_SERVER_SECURITY= $0000001F;
  {$EXTERNALSYM PRODUCT_MEDIUMBUSINESS_SERVER_SECURITY}
  PRODUCT_MEDIUMBUSINESS_SERVER_MESSAGING= $00000020;
  {$EXTERNALSYM PRODUCT_MEDIUMBUSINESS_SERVER_MESSAGING}
  PRODUCT_SERVER_FOUNDATION           = $00000021;
  {$EXTERNALSYM PRODUCT_SERVER_FOUNDATION}
  PRODUCT_HOME_PREMIUM_SERVER         = $00000022;
  {$EXTERNALSYM PRODUCT_HOME_PREMIUM_SERVER}
  PRODUCT_SERVER_FOR_SMALLBUSINESS_V  = $00000023;
  {$EXTERNALSYM PRODUCT_SERVER_FOR_SMALLBUSINESS_V}
  PRODUCT_STANDARD_SERVER_V           = $00000024;
  {$EXTERNALSYM PRODUCT_STANDARD_SERVER_V}
  PRODUCT_DATACENTER_SERVER_V         = $00000025;
  {$EXTERNALSYM PRODUCT_DATACENTER_SERVER_V}
  PRODUCT_ENTERPRISE_SERVER_V         = $00000026;
  {$EXTERNALSYM PRODUCT_ENTERPRISE_SERVER_V}
  PRODUCT_DATACENTER_SERVER_CORE_V    = $00000027;
  {$EXTERNALSYM PRODUCT_DATACENTER_SERVER_CORE_V}
  PRODUCT_STANDARD_SERVER_CORE_V      = $00000028;
  {$EXTERNALSYM PRODUCT_STANDARD_SERVER_CORE_V}
  PRODUCT_ENTERPRISE_SERVER_CORE_V    = $00000029;
  {$EXTERNALSYM PRODUCT_ENTERPRISE_SERVER_CORE_V}
  PRODUCT_HYPERV                      = $0000002A;
  {$EXTERNALSYM PRODUCT_HYPERV}
  PRODUCT_STORAGE_EXPRESS_SERVER_CORE = $0000002B;
  {$EXTERNALSYM PRODUCT_STORAGE_EXPRESS_SERVER_CORE}
  PRODUCT_STORAGE_STANDARD_SERVER_CORE= $0000002C;
  {$EXTERNALSYM PRODUCT_STORAGE_STANDARD_SERVER_CORE}
  PRODUCT_STORAGE_WORKGROUP_SERVER_CORE= $0000002D;
  {$EXTERNALSYM PRODUCT_STORAGE_WORKGROUP_SERVER_CORE}
  PRODUCT_STORAGE_ENTERPRISE_SERVER_CORE= $0000002E;
  {$EXTERNALSYM PRODUCT_STORAGE_ENTERPRISE_SERVER_CORE}
  PRODUCT_STARTER_N                   = $0000002F;
  {$EXTERNALSYM PRODUCT_STARTER_N}
  PRODUCT_PROFESSIONAL                = $00000030;
  {$EXTERNALSYM PRODUCT_PROFESSIONAL}
  PRODUCT_PROFESSIONAL_N              = $00000031;
  {$EXTERNALSYM PRODUCT_PROFESSIONAL_N}
  PRODUCT_SB_SOLUTION_SERVER          = $00000032;
  {$EXTERNALSYM PRODUCT_SB_SOLUTION_SERVER}
  PRODUCT_SERVER_FOR_SB_SOLUTIONS     = $00000033;
  {$EXTERNALSYM PRODUCT_SERVER_FOR_SB_SOLUTIONS}
  PRODUCT_STANDARD_SERVER_SOLUTIONS   = $00000034;
  {$EXTERNALSYM PRODUCT_STANDARD_SERVER_SOLUTIONS}
  PRODUCT_STANDARD_SERVER_SOLUTIONS_CORE= $00000035;
  {$EXTERNALSYM PRODUCT_STANDARD_SERVER_SOLUTIONS_CORE}
  PRODUCT_SB_SOLUTION_SERVER_EM       = $00000036;
  {$EXTERNALSYM PRODUCT_SB_SOLUTION_SERVER_EM}
  PRODUCT_SERVER_FOR_SB_SOLUTIONS_EM  = $00000037;
  {$EXTERNALSYM PRODUCT_SERVER_FOR_SB_SOLUTIONS_EM}
  PRODUCT_SOLUTION_EMBEDDEDSERVER     = $00000038;
  {$EXTERNALSYM PRODUCT_SOLUTION_EMBEDDEDSERVER}
  PRODUCT_SOLUTION_EMBEDDEDSERVER_CORE= $00000039;
  {$EXTERNALSYM PRODUCT_SOLUTION_EMBEDDEDSERVER_CORE}
  PRODUCT_SMALLBUSINESS_SERVER_PREMIUM_CORE= $0000003F;
  {$EXTERNALSYM PRODUCT_SMALLBUSINESS_SERVER_PREMIUM_CORE}
  PRODUCT_ESSENTIALBUSINESS_SERVER_MGMT= $0000003B;
  {$EXTERNALSYM PRODUCT_ESSENTIALBUSINESS_SERVER_MGMT}
  PRODUCT_ESSENTIALBUSINESS_SERVER_ADDL= $0000003C;
  {$EXTERNALSYM PRODUCT_ESSENTIALBUSINESS_SERVER_ADDL}
  PRODUCT_ESSENTIALBUSINESS_SERVER_MGMTSVC= $0000003D;
  {$EXTERNALSYM PRODUCT_ESSENTIALBUSINESS_SERVER_MGMTSVC}
  PRODUCT_ESSENTIALBUSINESS_SERVER_ADDLSVC= $0000003E;
  {$EXTERNALSYM PRODUCT_ESSENTIALBUSINESS_SERVER_ADDLSVC}
  PRODUCT_CLUSTER_SERVER_V            = $00000040;
  {$EXTERNALSYM PRODUCT_CLUSTER_SERVER_V}
  PRODUCT_EMBEDDED                    = $00000041;
  {$EXTERNALSYM PRODUCT_EMBEDDED}
  PRODUCT_STARTER_E                   = $00000042;
  {$EXTERNALSYM PRODUCT_STARTER_E}
  PRODUCT_HOME_BASIC_E                = $00000043;
  {$EXTERNALSYM PRODUCT_HOME_BASIC_E}
  PRODUCT_HOME_PREMIUM_E              = $00000044;
  {$EXTERNALSYM PRODUCT_HOME_PREMIUM_E}
  PRODUCT_PROFESSIONAL_E              = $00000045;
  {$EXTERNALSYM PRODUCT_PROFESSIONAL_E}
  PRODUCT_ENTERPRISE_E                = $00000046;
  {$EXTERNALSYM PRODUCT_ENTERPRISE_E}
  PRODUCT_ULTIMATE_E                  = $00000047;
  {$EXTERNALSYM PRODUCT_ULTIMATE_E}

  PRODUCT_UNLICENSED                  = $ABCDABCD;
  {$EXTERNALSYM PRODUCT_UNLICENSED}

//
//  Language IDs.
//
//  Note that the named locale APIs (eg GetLocaleInfoEx) are preferred.
//
//  Not all locales have unique Language IDs
//
//  The following two combinations of primary language ID and
//  sublanguage ID have special semantics:
//
//    Primary Language ID   Sublanguage ID      Result
//    -------------------   ---------------     ------------------------
//    LANG_NEUTRAL          SUBLANG_NEUTRAL     Language neutral
//    LANG_NEUTRAL          SUBLANG_DEFAULT     User default language
//    LANG_NEUTRAL          SUBLANG_SYS_DEFAULT System default language
//    LANG_INVARIANT        SUBLANG_NEUTRAL     Invariant locale
//
//  It is recommended that applications test for locale names instead of
//  Language IDs / LCIDs.

//
//  Primary language IDs.
//
//  WARNING: These aren't always unique.  Bosnian, Serbian & Croation for example.
//
//  It is recommended that applications test for locale names or actual LCIDs.
//
//  Note that the LANG, SUBLANG construction is not always consistent.
//  The named locale APIs (eg GetLocaleInfoEx) are recommended.
//

const
  LANG_NEUTRAL    = $00;
  {$EXTERNALSYM LANG_NEUTRAL}
  LANG_INVARIANT  = $7f;
  {$EXTERNALSYM LANG_INVARIANT}

  LANG_AFRIKAANS  = $36;
  {$EXTERNALSYM LANG_AFRIKAANS}
  LANG_ALBANIAN   = $1c;
  {$EXTERNALSYM LANG_ALBANIAN}
  LANG_ALSATIAN                       = $84;
  {$EXTERNALSYM LANG_ALSATIAN}
  LANG_AMHARIC                        = $5E;
  {$EXTERNALSYM LANG_AMHARIC}
  LANG_ARABIC     = $01;
  {$EXTERNALSYM LANG_ARABIC}
  LANG_ARMENIAN   = $2b;
  {$EXTERNALSYM LANG_ARMENIAN}
  LANG_ASSAMESE   = $4d;
  {$EXTERNALSYM LANG_ASSAMESE}
  LANG_AZERI      = $2c;
  {$EXTERNALSYM LANG_AZERI}
  LANG_BASHKIR                        = $6D;
  {$EXTERNALSYM LANG_BASHKIR}
  LANG_BASQUE     = $2d;
  {$EXTERNALSYM LANG_BASQUE}
  LANG_BELARUSIAN = $23;
  {$EXTERNALSYM LANG_BELARUSIAN}
  LANG_BENGALI    = $45;
  {$EXTERNALSYM LANG_BENGALI}
  LANG_BRETON                         = $7E;
  {$EXTERNALSYM LANG_BRETON}
  LANG_BOSNIAN                        = $1A;   // Use with SUBLANG_BOSNIAN_* Sublanguage IDs
  {$EXTERNALSYM LANG_BOSNIAN}
  LANG_BOSNIAN_NEUTRAL                = $781A; // Use with the ConvertDefaultLocale function
  {$EXTERNALSYM LANG_BOSNIAN_NEUTRAL}
  LANG_BULGARIAN  = $02;
  {$EXTERNALSYM LANG_BULGARIAN}
  LANG_CATALAN    = $03;
  {$EXTERNALSYM LANG_CATALAN}
  LANG_CHINESE    = $04;                       // Use with SUBLANG_CHINESE_* Sublanguage IDs
  {$EXTERNALSYM LANG_CHINESE}
  LANG_CHINESE_SIMPLIFIED             = $04;   // Use with the ConvertDefaultLocale function
  {$EXTERNALSYM LANG_CHINESE_SIMPLIFIED}
  LANG_CHINESE_TRADITIONAL            = $7C04; // Use with the ConvertDefaultLocale function
  {$EXTERNALSYM LANG_CHINESE_TRADITIONAL}
  LANG_CORSICAN                       = $83;
  {$EXTERNALSYM LANG_CORSICAN}
  LANG_CROATIAN   = $1a;
  {$EXTERNALSYM LANG_CROATIAN}
  LANG_CZECH      = $05;
  {$EXTERNALSYM LANG_CZECH}
  LANG_DANISH     = $06;
  {$EXTERNALSYM LANG_DANISH}
  LANG_DARI                           = $8C;
  {$EXTERNALSYM LANG_DARI}
  LANG_DIVEHI     = $65;
  {$EXTERNALSYM LANG_DIVEHI}
  LANG_DUTCH      = $13;
  {$EXTERNALSYM LANG_DUTCH}
  LANG_ENGLISH    = $09;
  {$EXTERNALSYM LANG_ENGLISH}
  LANG_ESTONIAN   = $25;
  {$EXTERNALSYM LANG_ESTONIAN}
  LANG_FAEROESE   = $38;
  {$EXTERNALSYM LANG_FAEROESE}
  LANG_FARSI      = $29 deprecated 'Use LANG_PERSIAN instead';
  {$EXTERNALSYM LANG_FARSI}
  LANG_FILIPINO                       = $64;
  {$EXTERNALSYM LANG_FILIPINO}
  LANG_FINNISH    = $0b;
  {$EXTERNALSYM LANG_FINNISH}
  LANG_FRENCH     = $0c;
  {$EXTERNALSYM LANG_FRENCH}
  LANG_FRISIAN                        = $62;
  {$EXTERNALSYM LANG_FRISIAN}
  LANG_GALICIAN   = $56;
  {$EXTERNALSYM LANG_GALICIAN}
  LANG_GEORGIAN   = $37;
  {$EXTERNALSYM LANG_GEORGIAN}
  LANG_GERMAN     = $07;
  {$EXTERNALSYM LANG_GERMAN}
  LANG_GREEK      = $08;
  {$EXTERNALSYM LANG_GREEK}
  LANG_GREENLANDIC                    = $6F;
  {$EXTERNALSYM LANG_GREENLANDIC}
  LANG_GUJARATI   = $47;
  {$EXTERNALSYM LANG_GUJARATI}
  LANG_HAUSA                          = $68;
  {$EXTERNALSYM LANG_HAUSA}
  LANG_HEBREW     = $0d;
  {$EXTERNALSYM LANG_HEBREW}
  LANG_HINDI      = $39;
  {$EXTERNALSYM LANG_HINDI}
  LANG_HUNGARIAN  = $0e;
  {$EXTERNALSYM LANG_HUNGARIAN}
  LANG_ICELANDIC  = $0f;
  {$EXTERNALSYM LANG_ICELANDIC}
  LANG_IGBO                           = $70;
  {$EXTERNALSYM LANG_IGBO}
  LANG_INDONESIAN = $21;
  {$EXTERNALSYM LANG_INDONESIAN}
  LANG_INUKTITUT                      = $5D;
  {$EXTERNALSYM LANG_INUKTITUT}
  LANG_IRISH                          = $3C;   // Use with the SUBLANG_IRISH_IRELAND Sublanguage ID
  {$EXTERNALSYM LANG_IRISH}
  LANG_ITALIAN    = $10;
  {$EXTERNALSYM LANG_ITALIAN}
  LANG_JAPANESE   = $11;
  {$EXTERNALSYM LANG_JAPANESE}
  LANG_KANNADA    = $4b;
  {$EXTERNALSYM LANG_KANNADA}
  LANG_KASHMIRI   = $60;
  {$EXTERNALSYM LANG_KASHMIRI}
  LANG_KAZAK      = $3f;
  {$EXTERNALSYM LANG_KAZAK}
  LANG_KHMER                          = $53;
  {$EXTERNALSYM LANG_KHMER}
  LANG_KICHE                          = $86;
  {$EXTERNALSYM LANG_KICHE}
  LANG_KINYARWANDA                    = $87;
  {$EXTERNALSYM LANG_KINYARWANDA}
  LANG_KONKANI    = $57;
  {$EXTERNALSYM LANG_KONKANI}
  LANG_KOREAN     = $12;
  {$EXTERNALSYM LANG_KOREAN}
  LANG_KYRGYZ     = $40;
  {$EXTERNALSYM LANG_KYRGYZ}
  LANG_LAO                            = $54;
  {$EXTERNALSYM LANG_LAO}
  LANG_LATVIAN    = $26;
  {$EXTERNALSYM LANG_LATVIAN}
  LANG_LITHUANIAN = $27;
  {$EXTERNALSYM LANG_LITHUANIAN}
  LANG_LOWER_SORBIAN                  = $2E;
  {$EXTERNALSYM LANG_LOWER_SORBIAN}
  LANG_LUXEMBOURGISH                  = $6E;
  {$EXTERNALSYM LANG_LUXEMBOURGISH}
  LANG_MACEDONIAN = $2f;            // the Former Yugoslav Republic of Macedonia
  {$EXTERNALSYM LANG_MACEDONIAN}
  LANG_MALAY      = $3e;
  {$EXTERNALSYM LANG_MALAY}
  LANG_MALAYALAM  = $4c;
  {$EXTERNALSYM LANG_MALAYALAM}
  LANG_MALTESE                        = $3A;
  {$EXTERNALSYM LANG_MALTESE}
  LANG_MANIPURI   = $58;
  {$EXTERNALSYM LANG_MANIPURI}
  LANG_MAORI                          = $81;
  {$EXTERNALSYM LANG_MAORI}
  LANG_MAPUDUNGUN                     = $7A;
  {$EXTERNALSYM LANG_MAPUDUNGUN}
  LANG_MARATHI    = $4e;
  {$EXTERNALSYM LANG_MARATHI}
  LANG_MOHAWK                         = $7C;
  {$EXTERNALSYM LANG_MOHAWK}
  LANG_MONGOLIAN  = $50;
  {$EXTERNALSYM LANG_MONGOLIAN}
  LANG_NEPALI     = $61;
  {$EXTERNALSYM LANG_NEPALI}
  LANG_NORWEGIAN  = $14;
  {$EXTERNALSYM LANG_NORWEGIAN}
  LANG_OCCITAN                        = $82;
  {$EXTERNALSYM LANG_OCCITAN}
  LANG_ORIYA      = $48;
  {$EXTERNALSYM LANG_ORIYA}
  LANG_PASHTO                         = $63;
  {$EXTERNALSYM LANG_PASHTO}
  LANG_PERSIAN                        = $29;
  {$EXTERNALSYM LANG_PERSIAN}
  LANG_POLISH     = $15;
  {$EXTERNALSYM LANG_POLISH}
  LANG_PORTUGUESE = $16;
  {$EXTERNALSYM LANG_PORTUGUESE}
  LANG_PUNJABI    = $46;
  {$EXTERNALSYM LANG_PUNJABI}
  LANG_QUECHUA                        = $6B;
  {$EXTERNALSYM LANG_QUECHUA}
  LANG_ROMANIAN   = $18;
  {$EXTERNALSYM LANG_ROMANIAN}
  LANG_ROMANSH                        = $17;
  {$EXTERNALSYM LANG_ROMANSH}
  LANG_RUSSIAN    = $19;
  {$EXTERNALSYM LANG_RUSSIAN}
  LANG_SAMI                           = $3B;
  {$EXTERNALSYM LANG_SAMI}
  LANG_SANSKRIT   = $4f;
  {$EXTERNALSYM LANG_SANSKRIT}
  LANG_SCOTTISH_GAELIC                = $91;
  {$EXTERNALSYM LANG_SCOTTISH_GAELIC}
  LANG_SERBIAN    = $1a;                       // Use with the SUBLANG_SERBIAN_* Sublanguage IDs
  {$EXTERNALSYM LANG_SERBIAN}
  LANG_SERBIAN_NEUTRAL                = $7C1A; // Use with the ConvertDefaultLocale function
  {$EXTERNALSYM LANG_SERBIAN_NEUTRAL}
  LANG_SINDHI     = $59;
  {$EXTERNALSYM LANG_SINDHI}
  LANG_SINHALESE                      = $5B;
  {$EXTERNALSYM LANG_SINHALESE}
  LANG_SLOVAK     = $1b;
  {$EXTERNALSYM LANG_SLOVAK}
  LANG_SLOVENIAN  = $24;
  {$EXTERNALSYM LANG_SLOVENIAN}
  LANG_SOTHO                          = $6C;
  {$EXTERNALSYM LANG_SOTHO}
  LANG_SPANISH    = $0a;
  {$EXTERNALSYM LANG_SPANISH}
  LANG_SWAHILI    = $41;
  {$EXTERNALSYM LANG_SWAHILI}
  LANG_SWEDISH    = $1d;
  {$EXTERNALSYM LANG_SWEDISH}
  LANG_SYRIAC     = $5a;
  {$EXTERNALSYM LANG_SYRIAC}
  LANG_TAJIK                          = $28;
  {$EXTERNALSYM LANG_TAJIK}
  LANG_TAMAZIGHT                      = $5F;
  {$EXTERNALSYM LANG_TAMAZIGHT}
  LANG_TAMIL      = $49;
  {$EXTERNALSYM LANG_TAMIL}
  LANG_TATAR      = $44;
  {$EXTERNALSYM LANG_TATAR}
  LANG_TELUGU     = $4a;
  {$EXTERNALSYM LANG_TELUGU}
  LANG_THAI       = $1e;
  {$EXTERNALSYM LANG_THAI}
  LANG_TIBETAN                        = $51;
  {$EXTERNALSYM LANG_TIBETAN}
  LANG_TIGRIGNA                       = $73;
  {$EXTERNALSYM LANG_TIGRIGNA}
  LANG_TSWANA                         = $32;
  {$EXTERNALSYM LANG_TSWANA}
  LANG_TURKISH    = $1f;
  {$EXTERNALSYM LANG_TURKISH}
  LANG_TURKMEN                        = $42;
  {$EXTERNALSYM LANG_TURKMEN}
  LANG_UIGHUR                         = $80;
  {$EXTERNALSYM LANG_UIGHUR}
  LANG_UKRAINIAN  = $22;
  {$EXTERNALSYM LANG_UKRAINIAN}
  LANG_UPPER_SORBIAN                  = $2E;
  {$EXTERNALSYM LANG_UPPER_SORBIAN}
  LANG_URDU       = $20;
  {$EXTERNALSYM LANG_URDU}
  LANG_UZBEK      = $43;
  {$EXTERNALSYM LANG_UZBEK}
  LANG_VIETNAMESE = $2a;
  {$EXTERNALSYM LANG_VIETNAMESE}
  LANG_WELSH                          = $52;
  {$EXTERNALSYM LANG_WELSH}
  LANG_WOLOF                          = $88;
  {$EXTERNALSYM LANG_WOLOF}
  LANG_XHOSA                          = $34;
  {$EXTERNALSYM LANG_XHOSA}
  LANG_YAKUT                          = $85;
  {$EXTERNALSYM LANG_YAKUT}
  LANG_YI                             = $78;
  {$EXTERNALSYM LANG_YI}
  LANG_YORUBA                         = $6A;
  {$EXTERNALSYM LANG_YORUBA}
  LANG_ZULU                           = $35;
  {$EXTERNALSYM LANG_ZULU}

//
//  Sublanguage IDs.
//
//  The name immediately following SUBLANG_ dictates which primary
//  language ID that sublanguage ID can be combined with to form a
//  valid language ID.
//
//  Note that the LANG, SUBLANG construction is not always consistent.
//  The named locale APIs (eg GetLocaleInfoEx) are recommended.
//

  SUBLANG_NEUTRAL     = $00; // language neutral
  {$EXTERNALSYM SUBLANG_NEUTRAL}
  SUBLANG_DEFAULT     = $01; // user default
  {$EXTERNALSYM SUBLANG_DEFAULT}
  SUBLANG_SYS_DEFAULT = $02; // system default
  {$EXTERNALSYM SUBLANG_SYS_DEFAULT}
  SUBLANG_CUSTOM_DEFAULT              = $03;  // default custom language/locale
  {$EXTERNALSYM SUBLANG_CUSTOM_DEFAULT}
  SUBLANG_CUSTOM_UNSPECIFIED          = $04;  // custom language/locale
  {$EXTERNALSYM SUBLANG_CUSTOM_UNSPECIFIED}
  SUBLANG_UI_CUSTOM_DEFAULT           = $05;  // Default custom MUI language/locale
  {$EXTERNALSYM SUBLANG_UI_CUSTOM_DEFAULT}

  SUBLANG_AFRIKAANS_SOUTH_AFRICA      = $01;  // Afrikaans (South Africa) 0x0436 af-ZA
  {$EXTERNALSYM SUBLANG_AFRIKAANS_SOUTH_AFRICA}
  SUBLANG_ALBANIAN_ALBANIA            = $01;  // Albanian (Albania) 0x041c sq-AL
  {$EXTERNALSYM SUBLANG_ALBANIAN_ALBANIA}
  SUBLANG_ALSATIAN_FRANCE             = $01;  // Alsatian (France) 0x0484
  {$EXTERNALSYM SUBLANG_ALSATIAN_FRANCE}
  SUBLANG_AMHARIC_ETHIOPIA            = $01;  // Amharic (Ethiopia) 0x045e
  {$EXTERNALSYM SUBLANG_AMHARIC_ETHIOPIA}
  SUBLANG_ARABIC_SAUDI_ARABIA        = $01; // Arabic (Saudi Arabia)
  {$EXTERNALSYM SUBLANG_ARABIC_SAUDI_ARABIA}
  SUBLANG_ARABIC_IRAQ                = $02; // Arabic (Iraq)
  {$EXTERNALSYM SUBLANG_ARABIC_IRAQ}
  SUBLANG_ARABIC_EGYPT               = $03; // Arabic (Egypt)
  {$EXTERNALSYM SUBLANG_ARABIC_EGYPT}
  SUBLANG_ARABIC_LIBYA               = $04; // Arabic (Libya)
  {$EXTERNALSYM SUBLANG_ARABIC_LIBYA}
  SUBLANG_ARABIC_ALGERIA             = $05; // Arabic (Algeria)
  {$EXTERNALSYM SUBLANG_ARABIC_ALGERIA}
  SUBLANG_ARABIC_MOROCCO             = $06; // Arabic (Morocco)
  {$EXTERNALSYM SUBLANG_ARABIC_MOROCCO}
  SUBLANG_ARABIC_TUNISIA             = $07; // Arabic (Tunisia)
  {$EXTERNALSYM SUBLANG_ARABIC_TUNISIA}
  SUBLANG_ARABIC_OMAN                = $08; // Arabic (Oman)
  {$EXTERNALSYM SUBLANG_ARABIC_OMAN}
  SUBLANG_ARABIC_YEMEN               = $09; // Arabic (Yemen)
  {$EXTERNALSYM SUBLANG_ARABIC_YEMEN}
  SUBLANG_ARABIC_SYRIA               = $0a; // Arabic (Syria)
  {$EXTERNALSYM SUBLANG_ARABIC_SYRIA}
  SUBLANG_ARABIC_JORDAN              = $0b; // Arabic (Jordan)
  {$EXTERNALSYM SUBLANG_ARABIC_JORDAN}
  SUBLANG_ARABIC_LEBANON             = $0c; // Arabic (Lebanon)
  {$EXTERNALSYM SUBLANG_ARABIC_LEBANON}
  SUBLANG_ARABIC_KUWAIT              = $0d; // Arabic (Kuwait)
  {$EXTERNALSYM SUBLANG_ARABIC_KUWAIT}
  SUBLANG_ARABIC_UAE                 = $0e; // Arabic (U.A.E)
  {$EXTERNALSYM SUBLANG_ARABIC_UAE}
  SUBLANG_ARABIC_BAHRAIN             = $0f; // Arabic (Bahrain)
  {$EXTERNALSYM SUBLANG_ARABIC_BAHRAIN}
  SUBLANG_ARABIC_QATAR               = $10; // Arabic (Qatar)
  {$EXTERNALSYM SUBLANG_ARABIC_QATAR}
  SUBLANG_ARMENIAN_ARMENIA            = $01;  // Armenian (Armenia) 0x042b hy-AM
  {$EXTERNALSYM SUBLANG_ARMENIAN_ARMENIA}
  SUBLANG_ASSAMESE_INDIA              = $01;  // Assamese (India) 0x044d
  {$EXTERNALSYM SUBLANG_ASSAMESE_INDIA}
  SUBLANG_AZERI_LATIN                = $01; // Azeri (Latin)
  {$EXTERNALSYM SUBLANG_AZERI_LATIN}
  SUBLANG_AZERI_CYRILLIC             = $02; // Azeri (Cyrillic)
  {$EXTERNALSYM SUBLANG_AZERI_CYRILLIC}
  SUBLANG_BASHKIR_RUSSIA              = $01;  // Bashkir (Russia) 0x046d ba-RU
  {$EXTERNALSYM SUBLANG_BASHKIR_RUSSIA}
  SUBLANG_BASQUE_BASQUE               = $01;  // Basque (Basque) 0x042d eu-ES
  {$EXTERNALSYM SUBLANG_BASQUE_BASQUE}
  SUBLANG_BELARUSIAN_BELARUS          = $01;  // Belarusian (Belarus) 0x0423 be-BY
  {$EXTERNALSYM SUBLANG_BELARUSIAN_BELARUS}
  SUBLANG_BENGALI_INDIA               = $01;  // Bengali (India)
  {$EXTERNALSYM SUBLANG_BENGALI_INDIA}
  SUBLANG_BENGALI_BANGLADESH          = $02;  // Bengali (Bangladesh)
  {$EXTERNALSYM SUBLANG_BENGALI_BANGLADESH}
  SUBLANG_BOSNIAN_BOSNIA_HERZEGOVINA_LATIN= $05;  // Bosnian (Bosnia and Herzegovina - Latin) 0x141a bs-BA-Latn
  {$EXTERNALSYM SUBLANG_BOSNIAN_BOSNIA_HERZEGOVINA_LATIN}
  SUBLANG_BOSNIAN_BOSNIA_HERZEGOVINA_CYRILLIC= $08;  // Bosnian (Bosnia and Herzegovina - Cyrillic) 0x201a bs-BA-Cyrl
  {$EXTERNALSYM SUBLANG_BOSNIAN_BOSNIA_HERZEGOVINA_CYRILLIC}
  SUBLANG_BRETON_FRANCE               = $01;  // Breton (France) 0x047e
  {$EXTERNALSYM SUBLANG_BRETON_FRANCE}
  SUBLANG_BULGARIAN_BULGARIA          = $01;  // Bulgarian (Bulgaria) 0x0402
  {$EXTERNALSYM SUBLANG_BULGARIAN_BULGARIA}
  SUBLANG_CATALAN_CATALAN             = $01;  // Catalan (Catalan) 0x0403
  {$EXTERNALSYM SUBLANG_CATALAN_CATALAN}
  SUBLANG_CHINESE_TRADITIONAL        = $01; // Chinese (Taiwan)
  {$EXTERNALSYM SUBLANG_CHINESE_TRADITIONAL}
  SUBLANG_CHINESE_SIMPLIFIED         = $02; // Chinese (PR China)
  {$EXTERNALSYM SUBLANG_CHINESE_SIMPLIFIED}
  SUBLANG_CHINESE_HONGKONG           = $03; // Chinese (Hong Kong S.A.R., P.R.C.)
  {$EXTERNALSYM SUBLANG_CHINESE_HONGKONG}
  SUBLANG_CHINESE_SINGAPORE          = $04; // Chinese (Singapore)
  {$EXTERNALSYM SUBLANG_CHINESE_SINGAPORE}
  SUBLANG_CHINESE_MACAU              = $05; // Chinese (Macau S.A.R.)
  {$EXTERNALSYM SUBLANG_CHINESE_MACAU}
  SUBLANG_CORSICAN_FRANCE             = $01;  // Corsican (France) 0x0483
  {$EXTERNALSYM SUBLANG_CORSICAN_FRANCE}
  SUBLANG_CZECH_CZECH_REPUBLIC        = $01;  // Czech (Czech Republic) 0x0405
  {$EXTERNALSYM SUBLANG_CZECH_CZECH_REPUBLIC}
  SUBLANG_CROATIAN_CROATIA            = $01;  // Croatian (Croatia)
  {$EXTERNALSYM SUBLANG_CROATIAN_CROATIA}
  SUBLANG_CROATIAN_BOSNIA_HERZEGOVINA_LATIN= $04;  // Croatian (Bosnia and Herzegovina - Latin) 0x101a hr-BA
  {$EXTERNALSYM SUBLANG_CROATIAN_BOSNIA_HERZEGOVINA_LATIN}
  SUBLANG_DANISH_DENMARK              = $01;  // Danish (Denmark) 0x0406
  {$EXTERNALSYM SUBLANG_DANISH_DENMARK}
  SUBLANG_DARI_AFGHANISTAN            = $01;  // Dari (Afghanistan)
  {$EXTERNALSYM SUBLANG_DARI_AFGHANISTAN}
  SUBLANG_DIVEHI_MALDIVES             = $01;  // Divehi (Maldives) 0x0465 div-MV
  {$EXTERNALSYM SUBLANG_DIVEHI_MALDIVES}
  SUBLANG_DUTCH                      = $01; // Dutch
  {$EXTERNALSYM SUBLANG_DUTCH}
  SUBLANG_DUTCH_BELGIAN              = $02; // Dutch (Belgian)
  {$EXTERNALSYM SUBLANG_DUTCH_BELGIAN}
  SUBLANG_ENGLISH_US                 = $01; // English (USA)
  {$EXTERNALSYM SUBLANG_ENGLISH_US}
  SUBLANG_ENGLISH_UK                 = $02; // English (UK)
  {$EXTERNALSYM SUBLANG_ENGLISH_UK}
  SUBLANG_ENGLISH_AUS                = $03; // English (Australian)
  {$EXTERNALSYM SUBLANG_ENGLISH_AUS}
  SUBLANG_ENGLISH_CAN                = $04; // English (Canadian)
  {$EXTERNALSYM SUBLANG_ENGLISH_CAN}
  SUBLANG_ENGLISH_NZ                 = $05; // English (New Zealand)
  {$EXTERNALSYM SUBLANG_ENGLISH_NZ}
  SUBLANG_ENGLISH_EIRE               = $06; // English (Irish)
  {$EXTERNALSYM SUBLANG_ENGLISH_EIRE}
  SUBLANG_ENGLISH_SOUTH_AFRICA       = $07; // English (South Africa)
  {$EXTERNALSYM SUBLANG_ENGLISH_SOUTH_AFRICA}
  SUBLANG_ENGLISH_JAMAICA            = $08; // English (Jamaica)
  {$EXTERNALSYM SUBLANG_ENGLISH_JAMAICA}
  SUBLANG_ENGLISH_CARIBBEAN          = $09; // English (Caribbean)
  {$EXTERNALSYM SUBLANG_ENGLISH_CARIBBEAN}
  SUBLANG_ENGLISH_BELIZE             = $0a; // English (Belize)
  {$EXTERNALSYM SUBLANG_ENGLISH_BELIZE}
  SUBLANG_ENGLISH_TRINIDAD           = $0b; // English (Trinidad)
  {$EXTERNALSYM SUBLANG_ENGLISH_TRINIDAD}
  SUBLANG_ENGLISH_ZIMBABWE           = $0c; // English (Zimbabwe)
  {$EXTERNALSYM SUBLANG_ENGLISH_ZIMBABWE}
  SUBLANG_ENGLISH_PHILIPPINES        = $0d; // English (Philippines)
  {$EXTERNALSYM SUBLANG_ENGLISH_PHILIPPINES}
  SUBLANG_ENGLISH_INDIA               = $10;  // English (India)
  {$EXTERNALSYM SUBLANG_ENGLISH_INDIA}
  SUBLANG_ENGLISH_MALAYSIA            = $11;  // English (Malaysia)
  {$EXTERNALSYM SUBLANG_ENGLISH_MALAYSIA}
  SUBLANG_ENGLISH_SINGAPORE           = $12;  // English (Singapore)
  {$EXTERNALSYM SUBLANG_ENGLISH_SINGAPORE}
  SUBLANG_ESTONIAN_ESTONIA            = $01;  // Estonian (Estonia) 0x0425 et-EE
  {$EXTERNALSYM SUBLANG_ESTONIAN_ESTONIA}
  SUBLANG_FAEROESE_FAROE_ISLANDS      = $01;  // Faroese (Faroe Islands) 0x0438 fo-FO
  {$EXTERNALSYM SUBLANG_FAEROESE_FAROE_ISLANDS}
  SUBLANG_FILIPINO_PHILIPPINES        = $01;  // Filipino (Philippines) 0x0464 fil-PH
  {$EXTERNALSYM SUBLANG_FILIPINO_PHILIPPINES}
  SUBLANG_FINNISH_FINLAND             = $01;  // Finnish (Finland) 0x040b
  {$EXTERNALSYM SUBLANG_FINNISH_FINLAND}
  SUBLANG_FRENCH                     = $01; // French
  {$EXTERNALSYM SUBLANG_FRENCH}
  SUBLANG_FRENCH_BELGIAN             = $02; // French (Belgian)
  {$EXTERNALSYM SUBLANG_FRENCH_BELGIAN}
  SUBLANG_FRENCH_CANADIAN            = $03; // French (Canadian)
  {$EXTERNALSYM SUBLANG_FRENCH_CANADIAN}
  SUBLANG_FRENCH_SWISS               = $04; // French (Swiss)
  {$EXTERNALSYM SUBLANG_FRENCH_SWISS}
  SUBLANG_FRENCH_LUXEMBOURG          = $05; // French (Luxembourg)
  {$EXTERNALSYM SUBLANG_FRENCH_LUXEMBOURG}
  SUBLANG_FRENCH_MONACO              = $06; // French (Monaco)
  {$EXTERNALSYM SUBLANG_FRENCH_MONACO}
  SUBLANG_FRISIAN_NETHERLANDS         = $01;  // Frisian (Netherlands) 0x0462 fy-NL
  {$EXTERNALSYM SUBLANG_FRISIAN_NETHERLANDS}
  SUBLANG_GALICIAN_GALICIAN           = $01;  // Galician (Galician) 0x0456 gl-ES
  {$EXTERNALSYM SUBLANG_GALICIAN_GALICIAN}
  SUBLANG_GEORGIAN_GEORGIA            = $01;  // Georgian (Georgia) 0x0437 ka-GE
  {$EXTERNALSYM SUBLANG_GEORGIAN_GEORGIA}
  SUBLANG_GERMAN                     = $01; // German
  {$EXTERNALSYM SUBLANG_GERMAN}
  SUBLANG_GERMAN_SWISS               = $02; // German (Swiss)
  {$EXTERNALSYM SUBLANG_GERMAN_SWISS}
  SUBLANG_GERMAN_AUSTRIAN            = $03; // German (Austrian)
  {$EXTERNALSYM SUBLANG_GERMAN_AUSTRIAN}
  SUBLANG_GERMAN_LUXEMBOURG          = $04; // German (Luxembourg)
  {$EXTERNALSYM SUBLANG_GERMAN_LUXEMBOURG}
  SUBLANG_GERMAN_LIECHTENSTEIN       = $05; // German (Liechtenstein)
  {$EXTERNALSYM SUBLANG_GERMAN_LIECHTENSTEIN}
  SUBLANG_GREEK_GREECE                = $01;  // Greek (Greece)
  {$EXTERNALSYM SUBLANG_GREEK_GREECE}
  SUBLANG_GREENLANDIC_GREENLAND       = $01;  // Greenlandic (Greenland) 0x046f kl-GL
  {$EXTERNALSYM SUBLANG_GREENLANDIC_GREENLAND}
  SUBLANG_GUJARATI_INDIA              = $01;  // Gujarati (India (Gujarati Script)) 0x0447 gu-IN
  {$EXTERNALSYM SUBLANG_GUJARATI_INDIA}
  SUBLANG_HAUSA_NIGERIA_LATIN         = $01;  // Hausa (Latin, Nigeria) 0x0468 ha-NG-Latn
  {$EXTERNALSYM SUBLANG_HAUSA_NIGERIA_LATIN}
  SUBLANG_HEBREW_ISRAEL               = $01;  // Hebrew (Israel) 0x040d
  {$EXTERNALSYM SUBLANG_HEBREW_ISRAEL}
  SUBLANG_HINDI_INDIA                 = $01;  // Hindi (India) 0x0439 hi-IN
  {$EXTERNALSYM SUBLANG_HINDI_INDIA}
  SUBLANG_HUNGARIAN_HUNGARY           = $01;  // Hungarian (Hungary) 0x040e
  {$EXTERNALSYM SUBLANG_HUNGARIAN_HUNGARY}
  SUBLANG_ICELANDIC_ICELAND           = $01;  // Icelandic (Iceland) 0x040f
  {$EXTERNALSYM SUBLANG_ICELANDIC_ICELAND}
  SUBLANG_IGBO_NIGERIA                = $01;  // Igbo (Nigeria) 0x0470 ig-NG
  {$EXTERNALSYM SUBLANG_IGBO_NIGERIA}
  SUBLANG_INDONESIAN_INDONESIA        = $01;  // Indonesian (Indonesia) 0x0421 id-ID
  {$EXTERNALSYM SUBLANG_INDONESIAN_INDONESIA}
  SUBLANG_INUKTITUT_CANADA            = $01;  // Inuktitut (Syllabics) (Canada) 0x045d iu-CA-Cans
  {$EXTERNALSYM SUBLANG_INUKTITUT_CANADA}
  SUBLANG_INUKTITUT_CANADA_LATIN      = $02;  // Inuktitut (Canada - Latin)
  {$EXTERNALSYM SUBLANG_INUKTITUT_CANADA_LATIN}
  SUBLANG_IRISH_IRELAND               = $02;  // Irish (Ireland)
  {$EXTERNALSYM SUBLANG_IRISH_IRELAND}
  SUBLANG_ITALIAN                    = $01; // Italian
  {$EXTERNALSYM SUBLANG_ITALIAN}
  SUBLANG_ITALIAN_SWISS              = $02; // Italian (Swiss)
  {$EXTERNALSYM SUBLANG_ITALIAN_SWISS}
  SUBLANG_JAPANESE_JAPAN              = $01;  // Japanese (Japan) 0x0411
  {$EXTERNALSYM SUBLANG_JAPANESE_JAPAN}
  SUBLANG_KANNADA_INDIA               = $01;  // Kannada (India (Kannada Script)) 0x044b kn-IN
  {$EXTERNALSYM SUBLANG_KANNADA_INDIA}
  SUBLANG_KASHMIRI_SASIA             = $02; // Kashmiri (South Asia)
  {$EXTERNALSYM SUBLANG_KASHMIRI_SASIA}
  SUBLANG_KASHMIRI_INDIA             = $02; // For app compatibility only
  {$EXTERNALSYM SUBLANG_KASHMIRI_INDIA}
  SUBLANG_KAZAK_KAZAKHSTAN            = $01;  // Kazakh (Kazakhstan) 0x043f kk-KZ
  {$EXTERNALSYM SUBLANG_KAZAK_KAZAKHSTAN}
  SUBLANG_KHMER_CAMBODIA              = $01;  // Khmer (Cambodia) 0x0453 kh-KH
  {$EXTERNALSYM SUBLANG_KHMER_CAMBODIA}
  SUBLANG_KICHE_GUATEMALA             = $01;  // K'iche (Guatemala)
  {$EXTERNALSYM SUBLANG_KICHE_GUATEMALA}
  SUBLANG_KINYARWANDA_RWANDA          = $01;  // Kinyarwanda (Rwanda) 0x0487 rw-RW
  {$EXTERNALSYM SUBLANG_KINYARWANDA_RWANDA}
  SUBLANG_KONKANI_INDIA               = $01;  // Konkani (India) 0x0457 kok-IN
  {$EXTERNALSYM SUBLANG_KONKANI_INDIA}
  SUBLANG_KOREAN                     = $01; // Korean (Extended Wansung)
  {$EXTERNALSYM SUBLANG_KOREAN}
  SUBLANG_KYRGYZ_KYRGYZSTAN           = $01;  // Kyrgyz (Kyrgyzstan) 0x0440 ky-KG
  {$EXTERNALSYM SUBLANG_KYRGYZ_KYRGYZSTAN}
  SUBLANG_LAO_LAO                     = $01;  // Lao (Lao PDR) 0x0454 lo-LA
  {$EXTERNALSYM SUBLANG_LAO_LAO}
  SUBLANG_LATVIAN_LATVIA              = $01;  // Latvian (Latvia) 0x0426 lv-LV
  {$EXTERNALSYM SUBLANG_LATVIAN_LATVIA}
  SUBLANG_LITHUANIAN                 = $01; // Lithuanian
  {$EXTERNALSYM SUBLANG_LITHUANIAN}
  SUBLANG_LOWER_SORBIAN_GERMANY       = $02;  // Lower Sorbian (Germany) 0x082e wee-DE
  {$EXTERNALSYM SUBLANG_LOWER_SORBIAN_GERMANY}
  SUBLANG_LUXEMBOURGISH_LUXEMBOURG    = $01;  // Luxembourgish (Luxembourg) 0x046e lb-LU
  {$EXTERNALSYM SUBLANG_LUXEMBOURGISH_LUXEMBOURG}
  SUBLANG_MACEDONIAN_MACEDONIA        = $01;  // Macedonian (Macedonia (FYROM)) 0x042f mk-MK
  {$EXTERNALSYM SUBLANG_MACEDONIAN_MACEDONIA}
  SUBLANG_MALAY_MALAYSIA             = $01; // Malay (Malaysia)
  {$EXTERNALSYM SUBLANG_MALAY_MALAYSIA}
  SUBLANG_MALAY_BRUNEI_DARUSSALAM    = $02; // Malay (Brunei Darussalam)
  {$EXTERNALSYM SUBLANG_MALAY_BRUNEI_DARUSSALAM}
  SUBLANG_MALAYALAM_INDIA             = $01;  // Malayalam (India (Malayalam Script) ) 0x044c ml-IN
  {$EXTERNALSYM SUBLANG_MALAYALAM_INDIA}
  SUBLANG_MALTESE_MALTA               = $01;  // Maltese (Malta) 0x043a mt-MT
  {$EXTERNALSYM SUBLANG_MALTESE_MALTA}
  SUBLANG_MAORI_NEW_ZEALAND           = $01;  // Maori (New Zealand) 0x0481 mi-NZ
  {$EXTERNALSYM SUBLANG_MAORI_NEW_ZEALAND}
  SUBLANG_MAPUDUNGUN_CHILE            = $01;  // Mapudungun (Chile) 0x047a arn-CL
  {$EXTERNALSYM SUBLANG_MAPUDUNGUN_CHILE}
  SUBLANG_MARATHI_INDIA               = $01;  // Marathi (India) 0x044e mr-IN
  {$EXTERNALSYM SUBLANG_MARATHI_INDIA}
  SUBLANG_MOHAWK_MOHAWK               = $01;  // Mohawk (Mohawk) 0x047c moh-CA
  {$EXTERNALSYM SUBLANG_MOHAWK_MOHAWK}
  SUBLANG_MONGOLIAN_CYRILLIC_MONGOLIA = $01;  // Mongolian (Cyrillic, Mongolia)
  {$EXTERNALSYM SUBLANG_MONGOLIAN_CYRILLIC_MONGOLIA}
  SUBLANG_MONGOLIAN_PRC               = $02;  // Mongolian (PRC)
  {$EXTERNALSYM SUBLANG_MONGOLIAN_PRC}
  SUBLANG_NEPALI_INDIA               = $02; // Nepali (India)
  {$EXTERNALSYM SUBLANG_NEPALI_INDIA}
  SUBLANG_NEPALI_NEPAL                = $01;  // Nepali (Nepal) 0x0461 ne-NP
  {$EXTERNALSYM SUBLANG_NEPALI_NEPAL}
  SUBLANG_NORWEGIAN_BOKMAL           = $01; // Norwegian (Bokmal)
  {$EXTERNALSYM SUBLANG_NORWEGIAN_BOKMAL}
  SUBLANG_NORWEGIAN_NYNORSK          = $02; // Norwegian (Nynorsk)
  {$EXTERNALSYM SUBLANG_NORWEGIAN_NYNORSK}
  SUBLANG_OCCITAN_FRANCE              = $01;  // Occitan (France) 0x0482 oc-FR
  {$EXTERNALSYM SUBLANG_OCCITAN_FRANCE}
  SUBLANG_ORIYA_INDIA                 = $01;  // Oriya (India (Oriya Script)) 0x0448 or-IN
  {$EXTERNALSYM SUBLANG_ORIYA_INDIA}
  SUBLANG_PASHTO_AFGHANISTAN          = $01;  // Pashto (Afghanistan)
  {$EXTERNALSYM SUBLANG_PASHTO_AFGHANISTAN}
  SUBLANG_PERSIAN_IRAN                = $01;  // Persian (Iran) 0x0429 fa-IR
  {$EXTERNALSYM SUBLANG_PERSIAN_IRAN}
  SUBLANG_POLISH_POLAND               = $01;  // Polish (Poland) 0x0415
  {$EXTERNALSYM SUBLANG_POLISH_POLAND}
  SUBLANG_PORTUGUESE                 = $02; // Portuguese
  {$EXTERNALSYM SUBLANG_PORTUGUESE}
  SUBLANG_PORTUGUESE_BRAZILIAN       = $01; // Portuguese (Brazilian)
  {$EXTERNALSYM SUBLANG_PORTUGUESE_BRAZILIAN}
  SUBLANG_PUNJABI_INDIA               = $01;  // Punjabi (India (Gurmukhi Script)) 0x0446 pa-IN
  {$EXTERNALSYM SUBLANG_PUNJABI_INDIA}
  SUBLANG_QUECHUA_BOLIVIA             = $01;  // Quechua (Bolivia)
  {$EXTERNALSYM SUBLANG_QUECHUA_BOLIVIA}
  SUBLANG_QUECHUA_ECUADOR             = $02;  // Quechua (Ecuador)
  {$EXTERNALSYM SUBLANG_QUECHUA_ECUADOR}
  SUBLANG_QUECHUA_PERU                = $03;  // Quechua (Peru)
  {$EXTERNALSYM SUBLANG_QUECHUA_PERU}
  SUBLANG_ROMANIAN_ROMANIA            = $01;  // Romanian (Romania) 0x0418
  {$EXTERNALSYM SUBLANG_ROMANIAN_ROMANIA}
  SUBLANG_ROMANSH_SWITZERLAND         = $01;  // Romansh (Switzerland) 0x0417 rm-CH
  {$EXTERNALSYM SUBLANG_ROMANSH_SWITZERLAND}
  SUBLANG_RUSSIAN_RUSSIA              = $01;  // Russian (Russia) 0x0419
  {$EXTERNALSYM SUBLANG_RUSSIAN_RUSSIA}
  SUBLANG_SAMI_NORTHERN_NORWAY        = $01;  // Northern Sami (Norway)
  {$EXTERNALSYM SUBLANG_SAMI_NORTHERN_NORWAY}
  SUBLANG_SAMI_NORTHERN_SWEDEN        = $02;  // Northern Sami (Sweden)
  {$EXTERNALSYM SUBLANG_SAMI_NORTHERN_SWEDEN}
  SUBLANG_SAMI_NORTHERN_FINLAND       = $03;  // Northern Sami (Finland)
  {$EXTERNALSYM SUBLANG_SAMI_NORTHERN_FINLAND}
  SUBLANG_SAMI_LULE_NORWAY            = $04;  // Lule Sami (Norway)
  {$EXTERNALSYM SUBLANG_SAMI_LULE_NORWAY}
  SUBLANG_SAMI_LULE_SWEDEN            = $05;  // Lule Sami (Sweden)
  {$EXTERNALSYM SUBLANG_SAMI_LULE_SWEDEN}
  SUBLANG_SAMI_SOUTHERN_NORWAY        = $06;  // Southern Sami (Norway)
  {$EXTERNALSYM SUBLANG_SAMI_SOUTHERN_NORWAY}
  SUBLANG_SAMI_SOUTHERN_SWEDEN        = $07;  // Southern Sami (Sweden)
  {$EXTERNALSYM SUBLANG_SAMI_SOUTHERN_SWEDEN}
  SUBLANG_SAMI_SKOLT_FINLAND          = $08;  // Skolt Sami (Finland)
  {$EXTERNALSYM SUBLANG_SAMI_SKOLT_FINLAND}
  SUBLANG_SAMI_INARI_FINLAND          = $09;  // Inari Sami (Finland)
  {$EXTERNALSYM SUBLANG_SAMI_INARI_FINLAND}
  SUBLANG_SANSKRIT_INDIA              = $01;  // Sanskrit (India) 0x044f sa-IN
  {$EXTERNALSYM SUBLANG_SANSKRIT_INDIA}
  SUBLANG_SCOTTISH_GAELIC             = $01;  // Scottish Gaelic (United Kingdom) 0x0491 gd-GB
  {$EXTERNALSYM SUBLANG_SCOTTISH_GAELIC}
  SUBLANG_SERBIAN_BOSNIA_HERZEGOVINA_LATIN = $06;  // Serbian (Bosnia and Herzegovina - Latin)
  {$EXTERNALSYM SUBLANG_SERBIAN_BOSNIA_HERZEGOVINA_LATIN}
  SUBLANG_SERBIAN_BOSNIA_HERZEGOVINA_CYRILLIC = $07;  // Serbian (Bosnia and Herzegovina - Cyrillic)
  {$EXTERNALSYM SUBLANG_SERBIAN_BOSNIA_HERZEGOVINA_CYRILLIC}
  SUBLANG_SERBIAN_MONTENEGRO_LATIN    = $0B;  // Serbian (Montenegro - Latn)
  {$EXTERNALSYM SUBLANG_SERBIAN_MONTENEGRO_LATIN}
  SUBLANG_SERBIAN_MONTENEGRO_CYRILLIC = $0C;  // Serbian (Montenegro - Cyrillic)
  {$EXTERNALSYM SUBLANG_SERBIAN_MONTENEGRO_CYRILLIC}
  SUBLANG_SERBIAN_SERBIA_LATIN        = $09;  // Serbian (Serbia - Latin)
  {$EXTERNALSYM SUBLANG_SERBIAN_SERBIA_LATIN}
  SUBLANG_SERBIAN_SERBIA_CYRILLIC     = $0A;  // Serbian (Serbia - Cyrillic)
  {$EXTERNALSYM SUBLANG_SERBIAN_SERBIA_CYRILLIC}
  SUBLANG_SERBIAN_CROATIA             = $01;  // Croatian (Croatia) 0x041a hr-HR
  {$EXTERNALSYM SUBLANG_SERBIAN_CROATIA}
  SUBLANG_SERBIAN_LATIN              = $02; // Serbian (Latin)
  {$EXTERNALSYM SUBLANG_SERBIAN_LATIN}
  SUBLANG_SERBIAN_CYRILLIC           = $03; // Serbian (Cyrillic)
  {$EXTERNALSYM SUBLANG_SERBIAN_CYRILLIC}
  SUBLANG_SINDHI_INDIA                = $01;  // Sindhi (India) reserved 0x0459
  {$EXTERNALSYM SUBLANG_SINDHI_INDIA}
  SUBLANG_SINDHI_PAKISTAN             = $02;  // Sindhi (Pakistan) reserved 0x0859
  {$EXTERNALSYM SUBLANG_SINDHI_PAKISTAN}
  SUBLANG_SINDHI_AFGHANISTAN          = $02;  // For app compatibility only
  {$EXTERNALSYM SUBLANG_SINDHI_AFGHANISTAN}
  SUBLANG_SINHALESE_SRI_LANKA         = $01;  // Sinhalese (Sri Lanka)
  {$EXTERNALSYM SUBLANG_SINHALESE_SRI_LANKA}
  SUBLANG_SOTHO_NORTHERN_SOUTH_AFRICA = $01;  // Northern Sotho (South Africa)
  {$EXTERNALSYM SUBLANG_SOTHO_NORTHERN_SOUTH_AFRICA}
  SUBLANG_SLOVAK_SLOVAKIA             = $01;  // Slovak (Slovakia) 0x041b sk-SK
  {$EXTERNALSYM SUBLANG_SLOVAK_SLOVAKIA}
  SUBLANG_SLOVENIAN_SLOVENIA          = $01;  // Slovenian (Slovenia) 0x0424 sl-SI
  {$EXTERNALSYM SUBLANG_SLOVENIAN_SLOVENIA}
  SUBLANG_SPANISH                    = $01; // Spanish (Castilian)
  {$EXTERNALSYM SUBLANG_SPANISH}
  SUBLANG_SPANISH_MEXICAN            = $02; // Spanish (Mexican)
  {$EXTERNALSYM SUBLANG_SPANISH_MEXICAN}
  SUBLANG_SPANISH_MODERN             = $03; // Spanish (Spain)
  {$EXTERNALSYM SUBLANG_SPANISH_MODERN}
  SUBLANG_SPANISH_GUATEMALA          = $04; // Spanish (Guatemala)
  {$EXTERNALSYM SUBLANG_SPANISH_GUATEMALA}
  SUBLANG_SPANISH_COSTA_RICA         = $05; // Spanish (Costa Rica)
  {$EXTERNALSYM SUBLANG_SPANISH_COSTA_RICA}
  SUBLANG_SPANISH_PANAMA             = $06; // Spanish (Panama)
  {$EXTERNALSYM SUBLANG_SPANISH_PANAMA}
  SUBLANG_SPANISH_DOMINICAN_REPUBLIC = $07; // Spanish (Dominican Republic)
  {$EXTERNALSYM SUBLANG_SPANISH_DOMINICAN_REPUBLIC}
  SUBLANG_SPANISH_VENEZUELA          = $08; // Spanish (Venezuela)
  {$EXTERNALSYM SUBLANG_SPANISH_VENEZUELA}
  SUBLANG_SPANISH_COLOMBIA           = $09; // Spanish (Colombia)
  {$EXTERNALSYM SUBLANG_SPANISH_COLOMBIA}
  SUBLANG_SPANISH_PERU               = $0a; // Spanish (Peru)
  {$EXTERNALSYM SUBLANG_SPANISH_PERU}
  SUBLANG_SPANISH_ARGENTINA          = $0b; // Spanish (Argentina)
  {$EXTERNALSYM SUBLANG_SPANISH_ARGENTINA}
  SUBLANG_SPANISH_ECUADOR            = $0c; // Spanish (Ecuador)
  {$EXTERNALSYM SUBLANG_SPANISH_ECUADOR}
  SUBLANG_SPANISH_CHILE              = $0d; // Spanish (Chile)
  {$EXTERNALSYM SUBLANG_SPANISH_CHILE}
  SUBLANG_SPANISH_URUGUAY            = $0e; // Spanish (Uruguay)
  {$EXTERNALSYM SUBLANG_SPANISH_URUGUAY}
  SUBLANG_SPANISH_PARAGUAY           = $0f; // Spanish (Paraguay)
  {$EXTERNALSYM SUBLANG_SPANISH_PARAGUAY}
  SUBLANG_SPANISH_BOLIVIA            = $10; // Spanish (Bolivia)
  {$EXTERNALSYM SUBLANG_SPANISH_BOLIVIA}
  SUBLANG_SPANISH_EL_SALVADOR        = $11; // Spanish (El Salvador)
  {$EXTERNALSYM SUBLANG_SPANISH_EL_SALVADOR}
  SUBLANG_SPANISH_HONDURAS           = $12; // Spanish (Honduras)
  {$EXTERNALSYM SUBLANG_SPANISH_HONDURAS}
  SUBLANG_SPANISH_NICARAGUA          = $13; // Spanish (Nicaragua)
  {$EXTERNALSYM SUBLANG_SPANISH_NICARAGUA}
  SUBLANG_SPANISH_PUERTO_RICO        = $14; // Spanish (Puerto Rico)
  {$EXTERNALSYM SUBLANG_SPANISH_PUERTO_RICO}
  SUBLANG_SPANISH_US                  = $15;  // Spanish (United States)
  {$EXTERNALSYM SUBLANG_SPANISH_US}
  SUBLANG_SWAHILI_KENYA               = $01;  // Swahili (Kenya) 0x0441 sw-KE
  {$EXTERNALSYM SUBLANG_SWAHILI_KENYA}
  SUBLANG_SWEDISH                    = $01; // Swedish
  {$EXTERNALSYM SUBLANG_SWEDISH}
  SUBLANG_SWEDISH_FINLAND            = $02; // Swedish (Finland)
  {$EXTERNALSYM SUBLANG_SWEDISH_FINLAND}
  SUBLANG_SYRIAC_SYRIA                = $01;  // Syriac (Syria) 0x045a syr-SY
  {$EXTERNALSYM SUBLANG_SYRIAC_SYRIA}
  SUBLANG_TAJIK_TAJIKISTAN            = $01;  // Tajik (Tajikistan) 0x0428 tg-TJ-Cyrl
  {$EXTERNALSYM SUBLANG_TAJIK_TAJIKISTAN}
  SUBLANG_TAMAZIGHT_ALGERIA_LATIN     = $02;  // Tamazight (Latin, Algeria) 0x085f tmz-DZ-Latn
  {$EXTERNALSYM SUBLANG_TAMAZIGHT_ALGERIA_LATIN}
  SUBLANG_TAMIL_INDIA                 = $01;  // Tamil (India)
  {$EXTERNALSYM SUBLANG_TAMIL_INDIA}
  SUBLANG_TATAR_RUSSIA                = $01;  // Tatar (Russia) 0x0444 tt-RU
  {$EXTERNALSYM SUBLANG_TATAR_RUSSIA}
  SUBLANG_TELUGU_INDIA                = $01;  // Telugu (India (Telugu Script)) 0x044a te-IN
  {$EXTERNALSYM SUBLANG_TELUGU_INDIA}
  SUBLANG_THAI_THAILAND               = $01;  // Thai (Thailand) 0x041e th-TH
  {$EXTERNALSYM SUBLANG_THAI_THAILAND}
  SUBLANG_TIBETAN_PRC                 = $01;  // Tibetan (PRC)
  {$EXTERNALSYM SUBLANG_TIBETAN_PRC}
  SUBLANG_TIGRIGNA_ERITREA            = $02;  // Tigrigna (Eritrea)
  {$EXTERNALSYM SUBLANG_TIGRIGNA_ERITREA}
  SUBLANG_TSWANA_SOUTH_AFRICA         = $01;  // Setswana / Tswana (South Africa) 0x0432 tn-ZA
  {$EXTERNALSYM SUBLANG_TSWANA_SOUTH_AFRICA}
  SUBLANG_TURKISH_TURKEY              = $01;  // Turkish (Turkey) 0x041f tr-TR
  {$EXTERNALSYM SUBLANG_TURKISH_TURKEY}
  SUBLANG_TURKMEN_TURKMENISTAN        = $01;  // Turkmen (Turkmenistan) 0x0442 tk-TM
  {$EXTERNALSYM SUBLANG_TURKMEN_TURKMENISTAN}
  SUBLANG_UIGHUR_PRC                  = $01;  // Uighur (PRC) 0x0480 ug-CN
  {$EXTERNALSYM SUBLANG_UIGHUR_PRC}
  SUBLANG_UKRAINIAN_UKRAINE           = $01;  // Ukrainian (Ukraine) 0x0422 uk-UA
  {$EXTERNALSYM SUBLANG_UKRAINIAN_UKRAINE}
  SUBLANG_UPPER_SORBIAN_GERMANY       = $01;  // Upper Sorbian (Germany) 0x042e wen-DE
  {$EXTERNALSYM SUBLANG_UPPER_SORBIAN_GERMANY}
  SUBLANG_URDU_PAKISTAN              = $01; // Urdu (Pakistan)
  {$EXTERNALSYM SUBLANG_URDU_PAKISTAN}
  SUBLANG_URDU_INDIA                 = $02; // Urdu (India)
  {$EXTERNALSYM SUBLANG_URDU_INDIA}
  SUBLANG_UZBEK_LATIN                = $01; // Uzbek (Latin)
  {$EXTERNALSYM SUBLANG_UZBEK_LATIN}
  SUBLANG_UZBEK_CYRILLIC             = $02; // Uzbek (Cyrillic)
  {$EXTERNALSYM SUBLANG_UZBEK_CYRILLIC}
  SUBLANG_VIETNAMESE_VIETNAM          = $01;  // Vietnamese (Vietnam) 0x042a vi-VN
  {$EXTERNALSYM SUBLANG_VIETNAMESE_VIETNAM}
  SUBLANG_WELSH_UNITED_KINGDOM        = $01;  // Welsh (United Kingdom) 0x0452 cy-GB
  {$EXTERNALSYM SUBLANG_WELSH_UNITED_KINGDOM}
  SUBLANG_WOLOF_SENEGAL               = $01;  // Wolof (Senegal)
  {$EXTERNALSYM SUBLANG_WOLOF_SENEGAL}
  SUBLANG_XHOSA_SOUTH_AFRICA          = $01;  // isiXhosa / Xhosa (South Africa) 0x0434 xh-ZA
  {$EXTERNALSYM SUBLANG_XHOSA_SOUTH_AFRICA}
  SUBLANG_YAKUT_RUSSIA                = $01;  // Yakut (Russia) 0x0485 sah-RU
  {$EXTERNALSYM SUBLANG_YAKUT_RUSSIA}
  SUBLANG_YI_PRC                      = $01;  // Yi (PRC)) 0x0478
  {$EXTERNALSYM SUBLANG_YI_PRC}
  SUBLANG_YORUBA_NIGERIA              = $01;  // Yoruba (Nigeria) 046a yo-NG
  {$EXTERNALSYM SUBLANG_YORUBA_NIGERIA}
  SUBLANG_ZULU_SOUTH_AFRICA           = $01;  // isiZulu / Zulu (South Africa) 0x0435 zu-ZA
  {$EXTERNALSYM SUBLANG_ZULU_SOUTH_AFRICA}

//
//  Sorting IDs.
//
//  Note that the named locale APIs (eg CompareStringExEx) are recommended.
//

  SORT_DEFAULT = $0; // sorting default
  {$EXTERNALSYM SORT_DEFAULT}

  SORT_INVARIANT_MATH                 = $1;  // Invariant (Mathematical Symbols)
  {$EXTERNALSYM SORT_INVARIANT_MATH}

  SORT_JAPANESE_XJIS    = $0; // Japanese XJIS order
  {$EXTERNALSYM SORT_JAPANESE_XJIS}
  SORT_JAPANESE_UNICODE = $1; // Japanese Unicode order
  {$EXTERNALSYM SORT_JAPANESE_UNICODE}
  SORT_JAPANESE_RADICALSTROKE         = $4;  // Japanese radical/stroke order
  {$EXTERNALSYM SORT_JAPANESE_RADICALSTROKE}

  SORT_CHINESE_BIG5     = $0; // Chinese BIG5 order
  {$EXTERNALSYM SORT_CHINESE_BIG5}
  SORT_CHINESE_PRCP     = $0; // PRC Chinese Phonetic order
  {$EXTERNALSYM SORT_CHINESE_PRCP}
  SORT_CHINESE_UNICODE  = $1; // Chinese Unicode order
  {$EXTERNALSYM SORT_CHINESE_UNICODE}
  SORT_CHINESE_PRC      = $2; // PRC Chinese Stroke Count order
  {$EXTERNALSYM SORT_CHINESE_PRC}
  SORT_CHINESE_BOPOMOFO = $3; // Traditional Chinese Bopomofo order
  {$EXTERNALSYM SORT_CHINESE_BOPOMOFO}
  SORT_CHINESE_RADICALSTROKE          = $4;  // Traditional Chinese radical/stroke order.
  {$EXTERNALSYM SORT_CHINESE_RADICALSTROKE}

  SORT_KOREAN_KSC     = $0; // Korean KSC order
  {$EXTERNALSYM SORT_KOREAN_KSC}
  SORT_KOREAN_UNICODE = $1; // Korean Unicode order
  {$EXTERNALSYM SORT_KOREAN_UNICODE}

  SORT_GERMAN_PHONE_BOOK = $1; // German Phone Book order
  {$EXTERNALSYM SORT_GERMAN_PHONE_BOOK}

  SORT_HUNGARIAN_DEFAULT   = $0; // Hungarian Default order
  {$EXTERNALSYM SORT_HUNGARIAN_DEFAULT}
  SORT_HUNGARIAN_TECHNICAL = $1; // Hungarian Technical order
  {$EXTERNALSYM SORT_HUNGARIAN_TECHNICAL}

  SORT_GEORGIAN_TRADITIONAL = $0; // Georgian Traditional order
  {$EXTERNALSYM SORT_GEORGIAN_TRADITIONAL}
  SORT_GEORGIAN_MODERN      = $1; // Georgian Modern order
  {$EXTERNALSYM SORT_GEORGIAN_MODERN}

//
//  A language ID is a 16 bit value which is the combination of a
//  primary language ID and a secondary language ID.  The bits are
//  allocated as follows:
//
//       +-----------------------+-------------------------+
//       |     Sublanguage ID    |   Primary Language ID   |
//       +-----------------------+-------------------------+
//        15                   10 9                       0   bit
//
//  WARNING:  This pattern isn't always follows, Serbina, Bosnian & Croation
//            for example.
//
//  It is recommended that applications test for locale names or actual LCIDs.
//
//  Language ID creation/extraction macros:
//
//    MAKELANGID    - construct language id from a primary language id and
//                    a sublanguage id.
//    PRIMARYLANGID - extract primary language id from a language id.
//    SUBLANGID     - extract sublanguage id from a language id.
//
//  Note that the LANG, SUBLANG construction is not always consistent.
//  The named locale APIs (eg GetLocaleInfoEx) are recommended.
//
//  Language IDs do not exist for all locales
//

function MAKELANGID(PrimaryLang, SubLang: USHORT): WORD;
{$EXTERNALSYM MAKELANGID}
function PRIMARYLANGID(LangId: WORD): WORD;
{$EXTERNALSYM PRIMARYLANGID}
function SUBLANGID(LangId: WORD): WORD;
{$EXTERNALSYM SUBLANGID}

//
//  A locale ID is a 32 bit value which is the combination of a
//  language ID, a sort ID, and a reserved area.  The bits are
//  allocated as follows:
//
//       +-------------+---------+-------------------------+
//       |   Reserved  | Sort ID |      Language ID        |
//       +-------------+---------+-------------------------+
//        31         20 19     16 15                      0   bit
//
//  WARNING: This pattern isn't always followed (es-ES_tradnl vs es-ES for example)
//
//  It is recommended that applications test for locale names or actual LCIDs.
//
//  Locale ID creation/extraction macros:
//
//    MAKELCID            - construct the locale id from a language id and a sort id.
//    MAKESORTLCID        - construct the locale id from a language id, sort id, and sort version.
//    LANGIDFROMLCID      - extract the language id from a locale id.
//    SORTIDFROMLCID      - extract the sort id from a locale id.
//    SORTVERSIONFROMLCID - extract the sort version from a locale id.
//

const
  NLS_VALID_LOCALE_MASK = $000fffff;
  {$EXTERNALSYM NLS_VALID_LOCALE_MASK}

function MAKELCID(LangId, SortId: WORD): DWORD;
{$EXTERNALSYM MAKELCID}
function MAKESORTLCID(LangId, SortId, SortVersion: WORD): DWORD;
{$EXTERNALSYM MAKESORTLCID}
function LANGIDFROMLCID(LocaleId: LCID): WORD;
{$EXTERNALSYM LANGIDFROMLCID}
function SORTIDFROMLCID(LocaleId: LCID): WORD;
{$EXTERNALSYM SORTIDFROMLCID}
function SORTVERSIONFROMLCID(LocaleId: LCID): WORD;
{$EXTERNALSYM SORTVERSIONFROMLCID}

// 8 characters for language
// 8 characters for region
// 64 characters for suffix (script)
// 2 characters for '-' separators
// 2 characters for prefix like "i-" or "x-"
// 1 null termination
const
  LOCALE_NAME_MAX_LENGTH              = 85;
  {$EXTERNALSYM LOCALE_NAME_MAX_LENGTH}

//
//  Default System and User IDs for language and locale.
//

function LANG_SYSTEM_DEFAULT: WORD;
{$EXTERNALSYM LANG_SYSTEM_DEFAULT}
function LANG_USER_DEFAULT: WORD;
{$EXTERNALSYM LANG_USER_DEFAULT}
function LOCALE_SYSTEM_DEFAULT: DWORD;
{$EXTERNALSYM LOCALE_SYSTEM_DEFAULT}
function LOCALE_USER_DEFAULT: DWORD;
{$EXTERNALSYM LOCALE_USER_DEFAULT}

function LOCALE_CUSTOM_DEFAULT: DWORD;
{$EXTERNALSYM LOCALE_CUSTOM_DEFAULT}
function LOCALE_CUSTOM_UNSPECIFIED: DWORD;
{$EXTERNALSYM LOCALE_CUSTOM_UNSPECIFIED}
function LOCALE_CUSTOM_UI_DEFAULT: DWORD;
{$EXTERNALSYM LOCALE_CUSTOM_UI_DEFAULT}
function LOCALE_NEUTRAL: DWORD;
{$EXTERNALSYM LOCALE_NEUTRAL}
function LOCALE_INVARIANT: DWORD;
{$EXTERNALSYM LOCALE_NEUTRAL}

const
  // (rom) deleted status codes already in JwaWinStatus.pas
  DBG_COMMAND_EXCEPTION           = DWORD($40010009);
  {$EXTERNALSYM DBG_COMMAND_EXCEPTION}
  STATUS_SXS_EARLY_DEACTIVATION   = DWORD($C015000F);
  {$EXTERNALSYM STATUS_SXS_EARLY_DEACTIVATION}
  STATUS_SXS_INVALID_DEACTIVATION = DWORD($C0150010);
  {$EXTERNALSYM STATUS_SXS_INVALID_DEACTIVATION}

const
  MAXIMUM_WAIT_OBJECTS  = 64;      // Maximum number of wait objects
  {$EXTERNALSYM MAXIMUM_WAIT_OBJECTS}

  MAXIMUM_SUSPEND_COUNT = MAXCHAR; // Maximum times thread can be suspended
  {$EXTERNALSYM MAXIMUM_SUSPEND_COUNT}

type
  KSPIN_LOCK = ULONG_PTR;
  {$EXTERNALSYM KSPIN_LOCK}
  PKSPIN_LOCK = ^KSPIN_LOCK;
  {$EXTERNALSYM PKSPIN_LOCK}

//
// Define functions to get the address of the current fiber and the
// current fiber data.
//

//
// Disable these two pramas that evaluate to "sti" "cli" on x86 so that driver
// writers to not leave them inadvertantly in their code.
//

function GetFiberData: PVOID;
{$EXTERNALSYM GetFiberData}

function GetCurrentFiber: PVOID;
{$EXTERNALSYM GetCurrentFiber}

//
//  Define the size of the 80387 save area, which is in the context frame.
//

const
  SIZE_OF_80387_REGISTERS = 80;
  {$EXTERNALSYM SIZE_OF_80387_REGISTERS}

//
// The following flags control the contents of the CONTEXT structure.
//

const
  CONTEXT_i386 = $00010000; // this assumes that i386 and
  {$EXTERNALSYM CONTEXT_i386}
  CONTEXT_i486 = $00010000; // i486 have identical context records
  {$EXTERNALSYM CONTEXT_i486}

const
  CONTEXT_CONTROL            = CONTEXT_i386 or $00000001; // SS:SP, CS:IP, FLAGS, BP
  {$EXTERNALSYM CONTEXT_CONTROL}
  CONTEXT_INTEGER            = CONTEXT_i386 or $00000002; // AX, BX, CX, DX, SI, DI
  {$EXTERNALSYM CONTEXT_INTEGER}
  CONTEXT_SEGMENTS           = CONTEXT_i386 or $00000004; // DS, ES, FS, GS
  {$EXTERNALSYM CONTEXT_SEGMENTS}
  CONTEXT_FLOATING_POINT     = CONTEXT_i386 or $00000008; // 387 state
  {$EXTERNALSYM CONTEXT_FLOATING_POINT}
  CONTEXT_DEBUG_REGISTERS    = CONTEXT_i386 or $00000010; // DB 0-3,6,7
  {$EXTERNALSYM CONTEXT_DEBUG_REGISTERS}
  CONTEXT_EXTENDED_REGISTERS = CONTEXT_i386 or $00000020; // cpu specific extensions
  {$EXTERNALSYM CONTEXT_EXTENDED_REGISTERS}

  CONTEXT_FULL = CONTEXT_CONTROL or CONTEXT_INTEGER or CONTEXT_SEGMENTS;
  {$EXTERNALSYM CONTEXT_FULL}

  CONTEXT_ALL = CONTEXT_CONTROL or CONTEXT_INTEGER or CONTEXT_SEGMENTS or CONTEXT_FLOATING_POINT or CONTEXT_DEBUG_REGISTERS;
  {$EXTERNALSYM CONTEXT_ALL}

//
// Define initial MxCsr control.
//

  INITIAL_MXCSR = $1f80;            // initial MXCSR value
  {$EXTERNALSYM INITIAL_MXCSR}

  MAXIMUM_SUPPORTED_EXTENSION = 512;
  {$EXTERNALSYM MAXIMUM_SUPPORTED_EXTENSION}

type
  PFLOATING_SAVE_AREA = ^FLOATING_SAVE_AREA;
  {$EXTERNALSYM PFLOATING_SAVE_AREA}
  _FLOATING_SAVE_AREA = record
    ControlWord: DWORD;
    StatusWord: DWORD;
    TagWord: DWORD;
    ErrorOffset: DWORD;
    ErrorSelector: DWORD;
    DataOffset: DWORD;
    DataSelector: DWORD;
    RegisterArea: array [0..SIZE_OF_80387_REGISTERS - 1] of BYTE;
    Cr0NpxState: DWORD;
  end;
  {$EXTERNALSYM _FLOATING_SAVE_AREA}
  FLOATING_SAVE_AREA = _FLOATING_SAVE_AREA;
  {$EXTERNALSYM FLOATING_SAVE_AREA}
  TFloatingSaveArea = FLOATING_SAVE_AREA;
  PFloatingSaveArea = PFLOATING_SAVE_AREA;

//
// Context Frame
//
//  This frame has a several purposes: 1) it is used as an argument to
//  NtContinue, 2) is is used to constuct a call frame for APC delivery,
//  and 3) it is used in the user level thread creation routines.
//
//  The layout of the record conforms to a standard call frame.
//

type
  PContext = ^CONTEXT;
{$IF DEFINED(CPUX64)}
  {$ALIGN 16}
  M128A = record
    Low: ULONG_PTR;
    High: LONG_PTR;
  end;

  _XSAVE_FORMAT = record
    ControlWord: WORD;
    StatusWord: WORD;
    TagWord: Byte;
    Reserved1: Byte;
    ErrorOpcode: WORD;
    ErrorOffset: DWORD;
    ErrorSelector: WORD;
    Reserved2: WORD;
    DataOffset: DWORD;
    DataSelector: WORD;
    Reserved3: WORD;
    MxCsr: DWORD;
    MxCsr_Mask: DWORD;
    FloatRegisters: array[0..7] of M128A;
{$IFDEF WIN64}
    XmmRegisters: array[0..15] of M128A;
    Reserved4: array[0..95] of Byte;
{$ELSE}
    XmmRegisters: array[0..7] of M128A;
    Reserved4: array[0..191] of Byte;

  {  The fields below are not part of XSAVE/XRSTOR format.
     They are written by the OS which is relying on a fact that
     neither (FX)SAVE nor (F)XSTOR used this area }

  StackControl: array[0..6] of DWORD;    // KERNEL_STACK_CONTROL structure actualy
  Cr0NpxState: DWORD;
{$ENDIF}
  end;
  XSAVE_FORMAT = _XSAVE_FORMAT;
  PXSAVE_FORMAT = ^XSAVE_FORMAT;
  XMM_SAVE_AREA32 = XSAVE_FORMAT;
  
  _CONTEXT = record

  { Register parameter home addresses.

    N.B. These fields are for convience - they could be used to extend the
         context record in the future }

    P1Home: DWORD64;
    P2Home: DWORD64;
    P3Home: DWORD64;
    P4Home: DWORD64;
    P5Home: DWORD64;
    P6Home: DWORD64;

  { Control flags }

    ContextFlags: DWORD;
    MxCsr: DWORD;

  { Segment Registers and processor flags }

    SegCs: WORD;
    SegDs: WORD;
    SegEs: WORD;
    SegFs: WORD;
    SegGs: WORD;
    SegSs: WORD;
    EFlags: DWORD;

  { Debug registers }

    Dr0: DWORD64;
    Dr1: DWORD64;
    Dr2: DWORD64;
    Dr3: DWORD64;
    Dr6: DWORD64;
    Dr7: DWORD64;

  { Integer registers }

    Rax: DWORD64;
    Rcx: DWORD64;
    Rdx: DWORD64;
    Rbx: DWORD64;
    Rsp: DWORD64;
    Rbp: DWORD64;
    Rsi: DWORD64;
    Rdi: DWORD64;
    R8: DWORD64;
    R9: DWORD64;
    R10: DWORD64;
    R11: DWORD64;
    R12: DWORD64;
    R13: DWORD64;
    R14: DWORD64;
    R15: DWORD64;

  { Program counter }

    Rip: DWORD64;

  { Floating point state }

    case Integer of
      0: (
        FltSave: XMM_SAVE_AREA32;
        VectorRegister: array[0..25] of M128A; { Vector registers }
        VectorControl: DWORD64;
        DebugControl: DWORD64; { Special debug control registers }
        LastBranchToRip: DWORD64;
        LastBranchFromRip: DWORD64;
        LastExceptionToRip: DWORD64;
        LastExceptionFromRip: DWORD64);
      1: (
        Header: array[0..1] of M128A;
        Legacy: array[0..7] of M128A;
        Xmm0: M128A;
        Xmm1: M128A;
        Xmm2: M128A;
        Xmm3: M128A;
        Xmm4: M128A;
        Xmm5: M128A;
        Xmm6: M128A;
        Xmm7: M128A;
        Xmm8: M128A;
        Xmm9: M128A;
        Xmm10: M128A;
        Xmm11: M128A;
        Xmm12: M128A;
        Xmm13: M128A;
        Xmm14: M128A;
        Xmm15: M128A);
  end;
  {$ALIGN 4}
{$ELSEIF DEFINED(CPUX86)}
  _CONTEXT  = record

    //
    // The flags values within this flag control the contents of
    // a CONTEXT record.
    //
    // If the context record is used as an input parameter, then
    // for each portion of the context record controlled by a flag
    // whose value is set, it is assumed that that portion of the
    // context record contains valid context. If the context record
    // is being used to modify a threads context, then only that
    // portion of the threads context will be modified.
    //
    // If the context record is used as an IN OUT parameter to capture
    // the context of a thread, then only those portions of the thread's
    // context corresponding to set flags will be returned.
    //
    // The context record is never used as an OUT only parameter.
    //

    ContextFlags: DWORD;

    //
    // This section is specified/returned if CONTEXT_DEBUG_REGISTERS is
    // set in ContextFlags.  Note that CONTEXT_DEBUG_REGISTERS is NOT
    // included in CONTEXT_FULL.
    //

    Dr0: DWORD;
    Dr1: DWORD;
    Dr2: DWORD;
    Dr3: DWORD;
    Dr6: DWORD;
    Dr7: DWORD;

    //
    // This section is specified/returned if the
    // ContextFlags word contians the flag CONTEXT_FLOATING_POINT.
    //

    FloatSave: FLOATING_SAVE_AREA;

    //
    // This section is specified/returned if the
    // ContextFlags word contians the flag CONTEXT_SEGMENTS.
    //

    SegGs: DWORD;
    SegFs: DWORD;
    SegEs: DWORD;
    SegDs: DWORD;

    //
    // This section is specified/returned if the
    // ContextFlags word contians the flag CONTEXT_INTEGER.
    //

    Edi: DWORD;
    Esi: DWORD;
    Ebx: DWORD;
    Edx: DWORD;
    Ecx: DWORD;
    Eax: DWORD;

    //
    // This section is specified/returned if the
    // ContextFlags word contians the flag CONTEXT_CONTROL.
    //

    Ebp: DWORD;
    Eip: DWORD;
    SegCs: DWORD;              // MUST BE SANITIZED
    EFlags: DWORD;             // MUST BE SANITIZED
    Esp: DWORD;
    SegSs: DWORD;

    //
    // This section is specified/returned if the ContextFlags word
    // contains the flag CONTEXT_EXTENDED_REGISTERS.
    // The format and contexts are processor specific
    //

    ExtendedRegisters: array [0..MAXIMUM_SUPPORTED_EXTENSION - 1] of BYTE;
  end;
{$IFEND}
  {$EXTERNALSYM _CONTEXT}
  CONTEXT = _CONTEXT;
  {$EXTERNALSYM CONTEXT}
  TContext = CONTEXT;

const
  LDTENTRY_FLAGS1_TYPE        = $1F;
  LDTENTRY_FLAGS1_DPL         = $60;
  LDTENTRY_FLAGS1_PRES        = $80;

  LDTENTRY_FLAGS2_LIMITHI     = $0F;
  LDTENTRY_FLAGS2_SYS         = $10;
  LDTENTRY_FLAGS2_RESERVED_0  = $20;
  LDTENTRY_FLAGS2_DEFAULT_BIG = $40;
  LDTENTRY_FLAGS2_GRANULARITY = $80;

type
  PLDT_ENTRY = ^LDT_ENTRY;
  {$EXTERNALSYM PLDT_ENTRY}
  _LDT_ENTRY = record
    LimitLow: WORD;
    BaseLow: WORD;
    BaseMid: BYTE;
    Flags1: BYTE;     // Declare as bytes to avoid alignment
    Flags2: BYTE;     // Problems.
    BaseHi: BYTE;
  end;
  {$EXTERNALSYM _LDT_ENTRY}
  LDT_ENTRY = _LDT_ENTRY;
  {$EXTERNALSYM LDT_ENTRY}
  TLdtEntry = LDT_ENTRY;
  PLdtEntry = PLDT_ENTRY;

// Please contact INTEL to get IA64-specific information

const
  EXCEPTION_NONCONTINUABLE     = $1; // Noncontinuable exception
  {$EXTERNALSYM EXCEPTION_NONCONTINUABLE}
  EXCEPTION_MAXIMUM_PARAMETERS = 15; // maximum number of exception parameters
  {$EXTERNALSYM EXCEPTION_MAXIMUM_PARAMETERS}

//
// Exception record definition.
//

type
  PEXCEPTION_RECORD = ^EXCEPTION_RECORD;
  {$EXTERNALSYM PEXCEPTION_RECORD}
  _EXCEPTION_RECORD = record
    ExceptionCode: DWORD;
    ExceptionFlags: DWORD;
    ExceptionRecord: PEXCEPTION_RECORD;
    ExceptionAddress: Pointer;
    NumberParameters: DWORD;
    ExceptionInformation: array [0..EXCEPTION_MAXIMUM_PARAMETERS - 1] of ULONG_PTR;
  end;
  {$EXTERNALSYM _EXCEPTION_RECORD}
  EXCEPTION_RECORD = _EXCEPTION_RECORD;
  {$EXTERNALSYM EXCEPTION_RECORD}
  TExceptionRecord = EXCEPTION_RECORD;
  PExceptionRecord = PEXCEPTION_RECORD;

  PEXCEPTION_RECORD32 = ^EXCEPTION_RECORD32;
  {$EXTERNALSYM PEXCEPTION_RECORD32}
  _EXCEPTION_RECORD32 = record
    ExceptionCode: DWORD;
    ExceptionFlags: DWORD;
    ExceptionRecord: DWORD;
    ExceptionAddress: DWORD;
    NumberParameters: DWORD;
    ExceptionInformation: array [0..EXCEPTION_MAXIMUM_PARAMETERS - 1] of DWORD;
  end;
  {$EXTERNALSYM _EXCEPTION_RECORD32}
  EXCEPTION_RECORD32 = _EXCEPTION_RECORD32;
  {$EXTERNALSYM EXCEPTION_RECORD32}
  TExceptionRecord32 = EXCEPTION_RECORD32;
  PExceptionRecord32 = PEXCEPTION_RECORD32;

  PEXCEPTION_RECORD64 = ^EXCEPTION_RECORD64;
  {$EXTERNALSYM PEXCEPTION_RECORD64}
  _EXCEPTION_RECORD64 = record
    ExceptionCode: DWORD;
    ExceptionFlags: DWORD;
    ExceptionRecord: DWORD64;
    ExceptionAddress: DWORD64;
    NumberParameters: DWORD;
    __unusedAlignment: DWORD;
    ExceptionInformation: array [0..EXCEPTION_MAXIMUM_PARAMETERS - 1] of DWORD64;
  end;
  {$EXTERNALSYM _EXCEPTION_RECORD64}
  EXCEPTION_RECORD64 = _EXCEPTION_RECORD64;
  {$EXTERNALSYM EXCEPTION_RECORD64}
  TExceptionRecord64 = EXCEPTION_RECORD64;
  PExceptionRecord64 = PEXCEPTION_RECORD64;

//
// Typedef for pointer returned by exception_info()
//

  PEXCEPTION_POINTERS = ^EXCEPTION_POINTERS;
  {$EXTERNALSYM PEXCEPTION_POINTERS}
  _EXCEPTION_POINTERS = record
    ExceptionRecord: PEXCEPTION_RECORD;
    ContextRecord: PCONTEXT;
  end;
  {$EXTERNALSYM _EXCEPTION_POINTERS}
  EXCEPTION_POINTERS = _EXCEPTION_POINTERS;
  {$EXTERNALSYM EXCEPTION_POINTERS}
  TExceptionPointers = EXCEPTION_POINTERS;
  PExceptionPointers = ^TExceptionPointers;

  PACCESS_TOKEN = Pointer;
  {$EXTERNALSYM PACCESS_TOKEN}

////////////////////////////////////////////////////////////////////////
//                                                                    //
//                             ACCESS MASK                            //
//                                                                    //
////////////////////////////////////////////////////////////////////////

//
//  Define the access mask as a longword sized structure divided up as
//  follows:
//
//       3 3 2 2 2 2 2 2 2 2 2 2 1 1 1 1 1 1 1 1 1 1
//       1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
//      +---------------+---------------+-------------------------------+
//      |G|G|G|G|Res'd|A| StandardRights|         SpecificRights        |
//      |R|W|E|A|     |S|               |                               |
//      +-+-------------+---------------+-------------------------------+
//
//      typedef struct _ACCESS_MASK {
//          WORD   SpecificRights;
//          BYTE  StandardRights;
//          BYTE  AccessSystemAcl : 1;
//          BYTE  Reserved : 3;
//          BYTE  GenericAll : 1;
//          BYTE  GenericExecute : 1;
//          BYTE  GenericWrite : 1;
//          BYTE  GenericRead : 1;
//      } ACCESS_MASK;
//      typedef ACCESS_MASK *PACCESS_MASK;
//
//  but to make life simple for programmer's we'll allow them to specify
//  a desired access mask by simply OR'ing together mulitple single rights
//  and treat an access mask as a DWORD.  For example
//
//      DesiredAccess = DELETE | READ_CONTROL
//
//  So we'll declare ACCESS_MASK as DWORD
//

type
  ACCESS_MASK = DWORD;
  {$EXTERNALSYM ACCESS_MASK}
  PACCESS_MASK = ^ACCESS_MASK;
  {$EXTERNALSYM PACCESS_MASK}
  TAccessMask = ACCESS_MASK;
  PAccessMask = PACCESS_MASK;

////////////////////////////////////////////////////////////////////////
//                                                                    //
//                             ACCESS TYPES                           //
//                                                                    //
////////////////////////////////////////////////////////////////////////

//
//  The following are masks for the predefined standard access types
//

const
  DELETE                   = $00010000;
  {$EXTERNALSYM DELETE}
  READ_CONTROL             = $00020000;
  {$EXTERNALSYM READ_CONTROL}
  WRITE_DAC                = $00040000;
  {$EXTERNALSYM WRITE_DAC}
  WRITE_OWNER              = $00080000;
  {$EXTERNALSYM WRITE_OWNER}
  SYNCHRONIZE              = $00100000;
  {$EXTERNALSYM SYNCHRONIZE}

  STANDARD_RIGHTS_REQUIRED = $000F0000;
  {$EXTERNALSYM STANDARD_RIGHTS_REQUIRED}

  STANDARD_RIGHTS_READ     = READ_CONTROL;
  {$EXTERNALSYM STANDARD_RIGHTS_READ}
  STANDARD_RIGHTS_WRITE    = READ_CONTROL;
  {$EXTERNALSYM STANDARD_RIGHTS_WRITE}
  STANDARD_RIGHTS_EXECUTE  = READ_CONTROL;
  {$EXTERNALSYM STANDARD_RIGHTS_EXECUTE}

  STANDARD_RIGHTS_ALL      = $001F0000;
  {$EXTERNALSYM STANDARD_RIGHTS_ALL}
  SPECIFIC_RIGHTS_ALL      = $0000FFFF;
  {$EXTERNALSYM SPECIFIC_RIGHTS_ALL}

//
// AccessSystemAcl access type
//

  ACCESS_SYSTEM_SECURITY = $01000000;
  {$EXTERNALSYM ACCESS_SYSTEM_SECURITY}

//
// MaximumAllowed access type
//

  MAXIMUM_ALLOWED = $02000000;
  {$EXTERNALSYM MAXIMUM_ALLOWED}

//
//  These are the generic rights.
//

  GENERIC_READ    = DWORD($80000000);
  {$EXTERNALSYM GENERIC_READ}
  GENERIC_WRITE   = $40000000;
  {$EXTERNALSYM GENERIC_WRITE}
  GENERIC_EXECUTE = $20000000;
  {$EXTERNALSYM GENERIC_EXECUTE}
  GENERIC_ALL     = $10000000;
  {$EXTERNALSYM GENERIC_ALL}

//
//  Define the generic mapping array.  This is used to denote the
//  mapping of each generic access right to a specific access mask.
//

type
  PGENERIC_MAPPING = ^GENERIC_MAPPING;
  {$EXTERNALSYM PGENERIC_MAPPING}
  _GENERIC_MAPPING = record
    GenericRead: ACCESS_MASK;
    GenericWrite: ACCESS_MASK;
    GenericExecute: ACCESS_MASK;
    GenericAll: ACCESS_MASK;
  end;
  {$EXTERNALSYM _GENERIC_MAPPING}
  GENERIC_MAPPING = _GENERIC_MAPPING;
  {$EXTERNALSYM GENERIC_MAPPING}
  TGenericMapping = GENERIC_MAPPING;
  PGenericMapping = PGENERIC_MAPPING;

////////////////////////////////////////////////////////////////////////
//                                                                    //
//                        LUID_AND_ATTRIBUTES                         //
//                                                                    //
////////////////////////////////////////////////////////////////////////
//
//

//#include <pshpack4.h>

  PLUID_AND_ATTRIBUTES = ^LUID_AND_ATTRIBUTES;
  {$EXTERNALSYM PLUID_AND_ATTRIBUTES}
  _LUID_AND_ATTRIBUTES = record
    Luid: LUID;
    Attributes: DWORD;
  end;
  {$EXTERNALSYM _LUID_AND_ATTRIBUTES}
  LUID_AND_ATTRIBUTES = _LUID_AND_ATTRIBUTES;
  {$EXTERNALSYM LUID_AND_ATTRIBUTES}
  TLuidAndAttributes = LUID_AND_ATTRIBUTES;
  PLuidAndAttributes = PLUID_AND_ATTRIBUTES;

  LUID_AND_ATTRIBUTES_ARRAY = array [0..ANYSIZE_ARRAY - 1] of LUID_AND_ATTRIBUTES;
  {$EXTERNALSYM LUID_AND_ATTRIBUTES_ARRAY}
  PLUID_AND_ATTRIBUTES_ARRAY = ^LUID_AND_ATTRIBUTES_ARRAY;
  {$EXTERNALSYM PLUID_AND_ATTRIBUTES_ARRAY}
  TLuidAndAttributesArray = LUID_AND_ATTRIBUTES_ARRAY;
  PLuidAndAttributesArray = ^TLuidAndAttributesArray;

//#include <poppack.h>

////////////////////////////////////////////////////////////////////////
//                                                                    //
//              Security Id     (SID)                                 //
//                                                                    //
////////////////////////////////////////////////////////////////////////
//
//
// Pictorially the structure of an SID is as follows:
//
//         1   1   1   1   1   1
//         5   4   3   2   1   0   9   8   7   6   5   4   3   2   1   0
//      +---------------------------------------------------------------+
//      |      SubAuthorityCount        |Reserved1 (SBZ)|   Revision    |
//      +---------------------------------------------------------------+
//      |                   IdentifierAuthority[0]                      |
//      +---------------------------------------------------------------+
//      |                   IdentifierAuthority[1]                      |
//      +---------------------------------------------------------------+
//      |                   IdentifierAuthority[2]                      |
//      +---------------------------------------------------------------+
//      |                                                               |
//      +- -  -  -  -  -  -  -  SubAuthority[]  -  -  -  -  -  -  -  - -+
//      |                                                               |
//      +---------------------------------------------------------------+
//
//

type
  PSID_IDENTIFIER_AUTHORITY = ^SID_IDENTIFIER_AUTHORITY;
  {$EXTERNALSYM PSID_IDENTIFIER_AUTHORITY}
  _SID_IDENTIFIER_AUTHORITY = record
    Value: array [0..5] of Byte;
  end;
  {$EXTERNALSYM _SID_IDENTIFIER_AUTHORITY}
  SID_IDENTIFIER_AUTHORITY = _SID_IDENTIFIER_AUTHORITY;
  {$EXTERNALSYM SID_IDENTIFIER_AUTHORITY}
  TSidIdentifierAuthority = SID_IDENTIFIER_AUTHORITY;
  PSidIdentifierAuthority = PSID_IDENTIFIER_AUTHORITY;

  PSid = ^SID;
  _SID = record
    Revision: Byte;
    SubAuthorityCount: Byte;
    IdentifierAuthority: SID_IDENTIFIER_AUTHORITY;
    SubAuthority: array [0..ANYSIZE_ARRAY - 1] of DWORD;
  end;
  {$EXTERNALSYM _SID}
  SID = _SID;
  {$EXTERNALSYM SID}
  PPSID = ^PSID;
  {$NODEFINE PPSID}
  TSid = SID;

const
  SID_REVISION                    = 1; // Current revision level
  {$EXTERNALSYM SID_REVISION}
  SID_MAX_SUB_AUTHORITIES         = 15;
  {$EXTERNALSYM SID_MAX_SUB_AUTHORITIES}
  SID_RECOMMENDED_SUB_AUTHORITIES = 1; // Will change to around 6 in a future release.
  {$EXTERNALSYM SID_RECOMMENDED_SUB_AUTHORITIES}

  SECURITY_MAX_SID_SIZE = SizeOf(SID) - SizeOf(DWORD) + (SID_MAX_SUB_AUTHORITIES * SizeOf(DWORD));
  {$EXTERNALSYM SECURITY_MAX_SID_SIZE}

  SidTypeUser           = 1;
  {$EXTERNALSYM SidTypeUser}
  SidTypeGroup          = 2;
  {$EXTERNALSYM SidTypeGroup}
  SidTypeDomain         = 3;
  {$EXTERNALSYM SidTypeDomain}
  SidTypeAlias          = 4;
  {$EXTERNALSYM SidTypeAlias}
  SidTypeWellKnownGroup = 5;
  {$EXTERNALSYM SidTypeWellKnownGroup}
  SidTypeDeletedAccount = 6;
  {$EXTERNALSYM SidTypeDeletedAccount}
  SidTypeInvalid        = 7;
  {$EXTERNALSYM SidTypeInvalid}
  SidTypeUnknown        = 8;
  {$EXTERNALSYM SidTypeUnknown}
  SidTypeComputer       = 9;
  {$EXTERNALSYM SidTypeComputer}
  SidTypeLabel          = 10;
  {$EXTERNALSYM SidTypeLabel}

type
  _SID_NAME_USE = DWORD;
  {$EXTERNALSYM _SID_NAME_USE}
  SID_NAME_USE = _SID_NAME_USE;
  {$EXTERNALSYM SID_NAME_USE}
  PSID_NAME_USE = ^SID_NAME_USE;
  {$EXTERNALSYM PSID_NAME_USE}
  TSidNameUse = SID_NAME_USE;
  PSidNameUSe = PSID_NAME_USE;

  PSID_AND_ATTRIBUTES = ^SID_AND_ATTRIBUTES;
  {$EXTERNALSYM PSID_AND_ATTRIBUTES}
  _SID_AND_ATTRIBUTES = record
    Sid: PSID;
    Attributes: DWORD;
  end;
  {$EXTERNALSYM _SID_AND_ATTRIBUTES}
  SID_AND_ATTRIBUTES = _SID_AND_ATTRIBUTES;
  {$EXTERNALSYM SID_AND_ATTRIBUTES}
  TSidAndAttributes = SID_AND_ATTRIBUTES;
  PSidAndAttributes = PSID_AND_ATTRIBUTES;

  SID_AND_ATTRIBUTES_ARRAY = array [0..ANYSIZE_ARRAY - 1] of SID_AND_ATTRIBUTES;
  {$EXTERNALSYM SID_AND_ATTRIBUTES_ARRAY}
  PSID_AND_ATTRIBUTES_ARRAY = ^SID_AND_ATTRIBUTES_ARRAY;
  {$EXTERNALSYM PSID_AND_ATTRIBUTES_ARRAY}
  PSidAndAttributesArray = ^TSidAndAttributesArray;
  TSidAndAttributesArray = SID_AND_ATTRIBUTES_ARRAY;

/////////////////////////////////////////////////////////////////////////////
//                                                                         //
// Universal well-known SIDs                                               //
//                                                                         //
//     Null SID                     S-1-0-0                                //
//     World                        S-1-1-0                                //
//     Local                        S-1-2-0                                //
//     Creator Owner ID             S-1-3-0                                //
//     Creator Group ID             S-1-3-1                                //
//     Creator Owner Server ID      S-1-3-2                                //
//     Creator Group Server ID      S-1-3-3                                //
//                                                                         //
//     (Non-unique IDs)             S-1-4                                  //
//                                                                         //
/////////////////////////////////////////////////////////////////////////////

const
  SECURITY_NULL_SID_AUTHORITY: TSidIdentifierAuthority = (Value: (0, 0, 0, 0, 0, 0));
  {$EXTERNALSYM SECURITY_NULL_SID_AUTHORITY}
  SECURITY_WORLD_SID_AUTHORITY: TSidIdentifierAuthority = (Value: (0, 0, 0, 0, 0, 1));
  {$EXTERNALSYM SECURITY_WORLD_SID_AUTHORITY}
  SECURITY_LOCAL_SID_AUTHORITY: TSidIdentifierAuthority = (Value: (0, 0, 0, 0, 0, 2));
  {$EXTERNALSYM SECURITY_LOCAL_SID_AUTHORITY}
  SECURITY_CREATOR_SID_AUTHORITY: TSidIdentifierAuthority = (Value: (0, 0, 0, 0, 0, 3));
  {$EXTERNALSYM SECURITY_CREATOR_SID_AUTHORITY}
  SECURITY_NON_UNIQUE_AUTHORITY: TSidIdentifierAuthority = (Value: (0, 0, 0, 0, 0, 4));
  {$EXTERNALSYM SECURITY_NON_UNIQUE_AUTHORITY}
  SECURITY_RESOURCE_MANAGER_AUTHORITY: TSidIdentifierAuthority = (Value: (0, 0, 0, 0, 0, 9));
  {$EXTERNALSYM SECURITY_RESOURCE_MANAGER_AUTHORITY}

  SECURITY_NULL_RID                 = $00000000;
  {$EXTERNALSYM SECURITY_NULL_RID}
  SECURITY_WORLD_RID                = $00000000;
  {$EXTERNALSYM SECURITY_WORLD_RID}
  SECURITY_LOCAL_RID                = $00000000;
  {$EXTERNALSYM SECURITY_LOCAL_RID}
  SECURITY_LOCAL_LOGON_RID            = $00000001;
  {$EXTERNALSYM SECURITY_LOCAL_LOGON_RID}

  SECURITY_CREATOR_OWNER_RID        = $00000000;
  {$EXTERNALSYM SECURITY_CREATOR_OWNER_RID}
  SECURITY_CREATOR_GROUP_RID        = $00000001;
  {$EXTERNALSYM SECURITY_CREATOR_GROUP_RID}

  SECURITY_CREATOR_OWNER_SERVER_RID = $00000002;
  {$EXTERNALSYM SECURITY_CREATOR_OWNER_SERVER_RID}
  SECURITY_CREATOR_GROUP_SERVER_RID = $00000003;
  {$EXTERNALSYM SECURITY_CREATOR_GROUP_SERVER_RID}

  SECURITY_CREATOR_OWNER_RIGHTS_RID   = $00000004;
  {$EXTERNALSYM SECURITY_CREATOR_OWNER_RIGHTS_RID}

/////////////////////////////////////////////////////////////////////////////
//                                                                         //
// NT well-known SIDs                                                        //
//                                                                           //
//     NT Authority            S-1-5                                         //
//     Dialup                  S-1-5-1                                       //
//                                                                           //
//     Network                 S-1-5-2                                       //
//     Batch                   S-1-5-3                                       //
//     Interactive             S-1-5-4                                       //
//     (Logon IDs)             S-1-5-5-X-Y                                   //
//     Service                 S-1-5-6                                       //
//     AnonymousLogon          S-1-5-7       (aka null logon session)        //
//     Proxy                   S-1-5-8                                       //
//     Enterprise DC (EDC)     S-1-5-9       (aka domain controller account) //
//     Self                    S-1-5-10      (self RID)                      //
//     Authenticated User      S-1-5-11      (Authenticated user somewhere)  //
//     Restricted Code         S-1-5-12      (Running restricted code)       //
//     Terminal Server         S-1-5-13      (Running on Terminal Server)    //
//     Remote Logon            S-1-5-14      (Remote Interactive Logon)      //
//     This Organization       S-1-5-15                                      //
//                                                                           //
//     IUser                   S-1-5-17                                      //
//     Local System            S-1-5-18                                      //
//     Local Service           S-1-5-19                                      //
//     Network Service         S-1-5-20                                      //
//                                                                           //
//     (NT non-unique IDs)     S-1-5-0x15-... (NT Domain Sids)               //
//                                                                           //
//     (Built-in domain)       S-1-5-0x20                                    //
//                                                                           //
//     (Security Package IDs)  S-1-5-0x40                                    //
//     NTLM Authentication     S-1-5-0x40-10                                 //
//     SChannel Authentication S-1-5-0x40-14                                 //
//     Digest Authentication   S-1-5-0x40-21                                 //
//                                                                           //
//     Other Organization      S-1-5-1000    (>=1000 can not be filtered)    //
//                                                                           //
//                                                                           //
// NOTE: the relative identifier values (RIDs) determine which security      //
//       boundaries the SID is allowed to cross.  Before adding new RIDs,    //
//       a determination needs to be made regarding which range they should  //
//       be added to in order to ensure proper "SID filtering"               //
//                                                                           //
///////////////////////////////////////////////////////////////////////////////

const
  SECURITY_NT_AUTHORITY: TSidIdentifierAuthority = (Value: (0, 0, 0, 0, 0, 5));
  {$EXTERNALSYM SECURITY_NT_AUTHORITY}

  SECURITY_DIALUP_RID                 = $00000001;
  {$EXTERNALSYM SECURITY_DIALUP_RID}
  SECURITY_NETWORK_RID                = $00000002;
  {$EXTERNALSYM SECURITY_NETWORK_RID}
  SECURITY_BATCH_RID                  = $00000003;
  {$EXTERNALSYM SECURITY_BATCH_RID}
  SECURITY_INTERACTIVE_RID            = $00000004;
  {$EXTERNALSYM SECURITY_INTERACTIVE_RID}
  SECURITY_LOGON_IDS_RID              = $00000005;
  {$EXTERNALSYM SECURITY_LOGON_IDS_RID}
  SECURITY_LOGON_IDS_RID_COUNT        = 3;
  {$EXTERNALSYM SECURITY_LOGON_IDS_RID_COUNT}
  SECURITY_SERVICE_RID                = $00000006;
  {$EXTERNALSYM SECURITY_SERVICE_RID}
  SECURITY_ANONYMOUS_LOGON_RID        = $00000007;
  {$EXTERNALSYM SECURITY_ANONYMOUS_LOGON_RID}
  SECURITY_PROXY_RID                  = $00000008;
  {$EXTERNALSYM SECURITY_PROXY_RID}
  SECURITY_ENTERPRISE_CONTROLLERS_RID = $00000009;
  {$EXTERNALSYM SECURITY_ENTERPRISE_CONTROLLERS_RID}
  SECURITY_SERVER_LOGON_RID           = SECURITY_ENTERPRISE_CONTROLLERS_RID;
  {$EXTERNALSYM SECURITY_SERVER_LOGON_RID}
  SECURITY_PRINCIPAL_SELF_RID         = $0000000A;
  {$EXTERNALSYM SECURITY_PRINCIPAL_SELF_RID}
  SECURITY_AUTHENTICATED_USER_RID     = $0000000B;
  {$EXTERNALSYM SECURITY_AUTHENTICATED_USER_RID}
  SECURITY_RESTRICTED_CODE_RID        = $0000000C;
  {$EXTERNALSYM SECURITY_RESTRICTED_CODE_RID}
  SECURITY_TERMINAL_SERVER_RID        = $0000000D;
  {$EXTERNALSYM SECURITY_TERMINAL_SERVER_RID}
  SECURITY_REMOTE_LOGON_RID           = $0000000E;
  {$EXTERNALSYM SECURITY_REMOTE_LOGON_RID}
  SECURITY_THIS_ORGANIZATION_RID      = $0000000F;
  {$EXTERNALSYM SECURITY_THIS_ORGANIZATION_RID}
  SECURITY_IUSER_RID                  = $00000011;
  {$EXTERNALSYM SECURITY_IUSER_RID}

  SECURITY_LOCAL_SYSTEM_RID    = $00000012;
  {$EXTERNALSYM SECURITY_LOCAL_SYSTEM_RID}
  SECURITY_LOCAL_SERVICE_RID   = $00000013;
  {$EXTERNALSYM SECURITY_LOCAL_SERVICE_RID}
  SECURITY_NETWORK_SERVICE_RID = $00000014;
  {$EXTERNALSYM SECURITY_NETWORK_SERVICE_RID}

  SECURITY_NT_NON_UNIQUE       = $00000015;
  {$EXTERNALSYM SECURITY_NT_NON_UNIQUE}
  SECURITY_NT_NON_UNIQUE_SUB_AUTH_COUNT = 3;
  {$EXTERNALSYM SECURITY_NT_NON_UNIQUE_SUB_AUTH_COUNT}

  SECURITY_ENTERPRISE_READONLY_CONTROLLERS_RID = $00000016;
  {$EXTERNALSYM SECURITY_ENTERPRISE_READONLY_CONTROLLERS_RID}

  SECURITY_BUILTIN_DOMAIN_RID  = $00000020;
  {$EXTERNALSYM SECURITY_BUILTIN_DOMAIN_RID}
  SECURITY_WRITE_RESTRICTED_CODE_RID  = $00000021;
  {$EXTERNALSYM SECURITY_WRITE_RESTRICTED_CODE_RID}

  SECURITY_PACKAGE_BASE_RID       = $00000040;
  {$EXTERNALSYM SECURITY_PACKAGE_BASE_RID}
  SECURITY_PACKAGE_RID_COUNT      = 2;
  {$EXTERNALSYM SECURITY_PACKAGE_RID_COUNT}
  SECURITY_PACKAGE_NTLM_RID       = $0000000A;
  {$EXTERNALSYM SECURITY_PACKAGE_NTLM_RID}
  SECURITY_PACKAGE_SCHANNEL_RID   = $0000000E;
  {$EXTERNALSYM SECURITY_PACKAGE_SCHANNEL_RID}
  SECURITY_PACKAGE_DIGEST_RID     = $00000015;
  {$EXTERNALSYM SECURITY_PACKAGE_DIGEST_RID}

  SECURITY_CRED_TYPE_BASE_RID         = $00000041;
  {$EXTERNALSYM SECURITY_CRED_TYPE_BASE_RID}
  SECURITY_CRED_TYPE_RID_COUNT        = 2;
  {$EXTERNALSYM SECURITY_CRED_TYPE_RID_COUNT}
  SECURITY_CRED_TYPE_THIS_ORG_CERT_RID = $00000001;
  {$EXTERNALSYM SECURITY_CRED_TYPE_THIS_ORG_CERT_RID}

  SECURITY_MIN_BASE_RID               = $00000050;
  {$EXTERNALSYM SECURITY_MIN_BASE_RID}

  SECURITY_SERVICE_ID_BASE_RID        = $00000050;
  {$EXTERNALSYM SECURITY_SERVICE_ID_BASE_RID}
  SECURITY_SERVICE_ID_RID_COUNT       = 6;
  {$EXTERNALSYM SECURITY_SERVICE_ID_RID_COUNT}

  SECURITY_RESERVED_ID_BASE_RID       = $00000051;
  {$EXTERNALSYM SECURITY_RESERVED_ID_BASE_RID}

  SECURITY_APPPOOL_ID_BASE_RID        = $00000052;
  {$EXTERNALSYM SECURITY_APPPOOL_ID_BASE_RID}
  SECURITY_APPPOOL_ID_RID_COUNT       = 6;
  {$EXTERNALSYM SECURITY_APPPOOL_ID_RID_COUNT}

  SECURITY_VIRTUALSERVER_ID_BASE_RID  = $00000053;
  {$EXTERNALSYM SECURITY_VIRTUALSERVER_ID_BASE_RID}
  SECURITY_VIRTUALSERVER_ID_RID_COUNT = 6;
  {$EXTERNALSYM SECURITY_VIRTUALSERVER_ID_RID_COUNT}

  SECURITY_USERMODEDRIVERHOST_ID_BASE_RID = $00000054;
  {$EXTERNALSYM SECURITY_USERMODEDRIVERHOST_ID_BASE_RID}
  SECURITY_USERMODEDRIVERHOST_ID_RID_COUNT = 6;
  {$EXTERNALSYM SECURITY_USERMODEDRIVERHOST_ID_RID_COUNT}

  SECURITY_CLOUD_INFRASTRUCTURE_SERVICES_ID_BASE_RID = $00000055;
  {$EXTERNALSYM SECURITY_CLOUD_INFRASTRUCTURE_SERVICES_ID_BASE_RID}
  SECURITY_CLOUD_INFRASTRUCTURE_SERVICES_ID_RID_COUNT = 6;
  {$EXTERNALSYM SECURITY_CLOUD_INFRASTRUCTURE_SERVICES_ID_RID_COUNT}

  SECURITY_WMIHOST_ID_BASE_RID        = $00000056;
  {$EXTERNALSYM SECURITY_WMIHOST_ID_BASE_RID}
  SECURITY_WMIHOST_ID_RID_COUNT       = 6;
  {$EXTERNALSYM SECURITY_WMIHOST_ID_RID_COUNT}

  SECURITY_TASK_ID_BASE_RID           = $00000057;
  {$EXTERNALSYM SECURITY_TASK_ID_BASE_RID}

  SECURITY_NFS_ID_BASE_RID            = $00000058;
  {$EXTERNALSYM SECURITY_NFS_ID_BASE_RID}

  SECURITY_COM_ID_BASE_RID            = $00000059;
  {$EXTERNALSYM SECURITY_COM_ID_BASE_RID}

  SECURITY_VIRTUALACCOUNT_ID_RID_COUNT = 6;
  {$EXTERNALSYM SECURITY_VIRTUALACCOUNT_ID_RID_COUNT}

  SECURITY_MAX_BASE_RID               = $0000006F;
  {$EXTERNALSYM SECURITY_MAX_BASE_RID}
  SECURITY_MAX_ALWAYS_FILTERED    = $000003E7;
  {$EXTERNALSYM SECURITY_MAX_ALWAYS_FILTERED}
  SECURITY_MIN_NEVER_FILTERED     = $000003E8;
  {$EXTERNALSYM SECURITY_MIN_NEVER_FILTERED}

  SECURITY_OTHER_ORGANIZATION_RID = $000003E8;
  {$EXTERNALSYM SECURITY_OTHER_ORGANIZATION_RID}

//
//Service SID type RIDs are in the range 0x50- 0x6F.  Therefore, we are giving  the next available RID to Windows Mobile team.
//
  {$EXTERNALSYM SECURITY_WINDOWSMOBILE_ID_BASE_RID}
  SECURITY_WINDOWSMOBILE_ID_BASE_RID  = $00000070;


/////////////////////////////////////////////////////////////////////////////
//                                                                         //
// well-known domain relative sub-authority values (RIDs)...               //
//                                                                         //
/////////////////////////////////////////////////////////////////////////////

  DOMAIN_GROUP_RID_ENTERPRISE_READONLY_DOMAIN_CONTROLLERS = $000001F2;
  {$EXTERNALSYM DOMAIN_GROUP_RID_ENTERPRISE_READONLY_DOMAIN_CONTROLLERS}

  FOREST_USER_RID_MAX    = $000001F3;
  {$EXTERNALSYM FOREST_USER_RID_MAX}

// Well-known users ...

  DOMAIN_USER_RID_ADMIN  = $000001F4;
  {$EXTERNALSYM DOMAIN_USER_RID_ADMIN}
  DOMAIN_USER_RID_GUEST  = $000001F5;
  {$EXTERNALSYM DOMAIN_USER_RID_GUEST}
  DOMAIN_USER_RID_KRBTGT = $000001F6;
  {$EXTERNALSYM DOMAIN_USER_RID_KRBTGT}

  DOMAIN_USER_RID_MAX    = $000003E7;
  {$EXTERNALSYM DOMAIN_USER_RID_MAX}

// well-known groups ...

  DOMAIN_GROUP_RID_ADMINS            = $00000200;
  {$EXTERNALSYM DOMAIN_GROUP_RID_ADMINS}
  DOMAIN_GROUP_RID_USERS             = $00000201;
  {$EXTERNALSYM DOMAIN_GROUP_RID_USERS}
  DOMAIN_GROUP_RID_GUESTS            = $00000202;
  {$EXTERNALSYM DOMAIN_GROUP_RID_GUESTS}
  DOMAIN_GROUP_RID_COMPUTERS         = $00000203;
  {$EXTERNALSYM DOMAIN_GROUP_RID_COMPUTERS}
  DOMAIN_GROUP_RID_CONTROLLERS       = $00000204;
  {$EXTERNALSYM DOMAIN_GROUP_RID_CONTROLLERS}
  DOMAIN_GROUP_RID_CERT_ADMINS       = $00000205;
  {$EXTERNALSYM DOMAIN_GROUP_RID_CERT_ADMINS}
  DOMAIN_GROUP_RID_SCHEMA_ADMINS     = $00000206;
  {$EXTERNALSYM DOMAIN_GROUP_RID_SCHEMA_ADMINS}
  DOMAIN_GROUP_RID_ENTERPRISE_ADMINS = $00000207;
  {$EXTERNALSYM DOMAIN_GROUP_RID_ENTERPRISE_ADMINS}
  DOMAIN_GROUP_RID_POLICY_ADMINS     = $00000208;
  {$EXTERNALSYM DOMAIN_GROUP_RID_POLICY_ADMINS}
  DOMAIN_GROUP_RID_READONLY_CONTROLLERS = $00000209;
  {$EXTERNALSYM DOMAIN_GROUP_RID_READONLY_CONTROLLERS}

// well-known aliases ...

  DOMAIN_ALIAS_RID_ADMINS           = $00000220;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_ADMINS}
  DOMAIN_ALIAS_RID_USERS            = $00000221;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_USERS}
  DOMAIN_ALIAS_RID_GUESTS           = $00000222;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_GUESTS}
  DOMAIN_ALIAS_RID_POWER_USERS      = $00000223;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_POWER_USERS}

  DOMAIN_ALIAS_RID_ACCOUNT_OPS      = $00000224;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_ACCOUNT_OPS}
  DOMAIN_ALIAS_RID_SYSTEM_OPS       = $00000225;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_SYSTEM_OPS}
  DOMAIN_ALIAS_RID_PRINT_OPS        = $00000226;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_PRINT_OPS}
  DOMAIN_ALIAS_RID_BACKUP_OPS       = $00000227;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_BACKUP_OPS}

  DOMAIN_ALIAS_RID_REPLICATOR       = $00000228;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_REPLICATOR}
  DOMAIN_ALIAS_RID_RAS_SERVERS      = $00000229;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_RAS_SERVERS}
  DOMAIN_ALIAS_RID_PREW2KCOMPACCESS = $0000022A;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_PREW2KCOMPACCESS}
  DOMAIN_ALIAS_RID_REMOTE_DESKTOP_USERS = $0000022B;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_REMOTE_DESKTOP_USERS}
  DOMAIN_ALIAS_RID_NETWORK_CONFIGURATION_OPS = $0000022C;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_NETWORK_CONFIGURATION_OPS}
  DOMAIN_ALIAS_RID_INCOMING_FOREST_TRUST_BUILDERS = $0000022D;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_INCOMING_FOREST_TRUST_BUILDERS}

  DOMAIN_ALIAS_RID_MONITORING_USERS      = $0000022E;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_MONITORING_USERS}
  DOMAIN_ALIAS_RID_LOGGING_USERS         = $0000022F;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_LOGGING_USERS}
  DOMAIN_ALIAS_RID_AUTHORIZATIONACCESS   = $00000230;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_AUTHORIZATIONACCESS}
  DOMAIN_ALIAS_RID_TS_LICENSE_SERVERS    = $00000231;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_TS_LICENSE_SERVERS}
  DOMAIN_ALIAS_RID_DCOM_USERS         = $00000232;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_DCOM_USERS}
  DOMAIN_ALIAS_RID_IUSERS             = $00000238;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_IUSERS}
  DOMAIN_ALIAS_RID_CRYPTO_OPERATORS   = $00000239;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_CRYPTO_OPERATORS}
  DOMAIN_ALIAS_RID_CACHEABLE_PRINCIPALS_GROUP = $0000023B;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_CACHEABLE_PRINCIPALS_GROUP}
  DOMAIN_ALIAS_RID_NON_CACHEABLE_PRINCIPALS_GROUP = $0000023C;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_NON_CACHEABLE_PRINCIPALS_GROUP}
  DOMAIN_ALIAS_RID_EVENT_LOG_READERS_GROUP = $0000023D;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_EVENT_LOG_READERS_GROUP}
  DOMAIN_ALIAS_RID_CERTSVC_DCOM_ACCESS_GROUP = $0000023E;
  {$EXTERNALSYM DOMAIN_ALIAS_RID_CERTSVC_DCOM_ACCESS_GROUP}


  SECURITY_MANDATORY_LABEL_AUTHORITY: TSidIdentifierAuthority = (Value: (0, 0, 0, 0, 0, 16));
  {$EXTERNALSYM SECURITY_MANDATORY_LABEL_AUTHORITY}
  SECURITY_MANDATORY_UNTRUSTED_RID    = $00000000;
  {$EXTERNALSYM SECURITY_MANDATORY_UNTRUSTED_RID}
  SECURITY_MANDATORY_LOW_RID          = $00001000;
  {$EXTERNALSYM SECURITY_MANDATORY_LOW_RID}
  SECURITY_MANDATORY_MEDIUM_RID       = $00002000;
  {$EXTERNALSYM SECURITY_MANDATORY_MEDIUM_RID}
  SECURITY_MANDATORY_MEDIUM_PLUS_RID  = SECURITY_MANDATORY_MEDIUM_RID + $100;
  {$EXTERNALSYM SECURITY_MANDATORY_MEDIUM_PLUS_RID}
  SECURITY_MANDATORY_HIGH_RID         = $00003000;
  {$EXTERNALSYM SECURITY_MANDATORY_HIGH_RID}
  SECURITY_MANDATORY_SYSTEM_RID       = $00004000;
  {$EXTERNALSYM SECURITY_MANDATORY_SYSTEM_RID}
  SECURITY_MANDATORY_PROTECTED_PROCESS_RID = $00005000;
  {$EXTERNALSYM SECURITY_MANDATORY_PROTECTED_PROCESS_RID}

//
// SECURITY_MANDATORY_MAXIMUM_USER_RID is the highest RID that
// can be set by a usermode caller.
//

  SECURITY_MANDATORY_MAXIMUM_USER_RID = SECURITY_MANDATORY_SYSTEM_RID;
  {$EXTERNALSYM SECURITY_MANDATORY_MAXIMUM_USER_RID}



//
// Well known SID definitions for lookup.
//


type
//TODO: MERGE
  WELL_KNOWN_SID_TYPE = (
{$IFDEF WINVISTA_UP}
    WinNullSid {= 0},
    WinWorldSid {= 1},
    WinLocalSid {= 2},
    WinCreatorOwnerSid {= 3},
    WinCreatorGroupSid {= 4},
    WinCreatorOwnerServerSid {= 5},
    WinCreatorGroupServerSid {= 6},
    WinNtAuthoritySid {= 7},
    WinDialupSid {= 8},
    WinNetworkSid {= 9},
    WinBatchSid {= 10},
    WinInteractiveSid {= 11},
    WinServiceSid {= 12},
    WinAnonymousSid {= 13},
    WinProxySid {= 14},
    WinEnterpriseControllersSid {= 15},
    WinSelfSid {= 16},
    WinAuthenticatedUserSid {= 17},
    WinRestrictedCodeSid {= 18},
    WinTerminalServerSid {= 19},
    WinRemoteLogonIdSid {= 20},
    WinLogonIdsSid {= 21},
    WinLocalSystemSid {= 22},
    WinLocalServiceSid {= 23},
    WinNetworkServiceSid {= 24},
    WinBuiltinDomainSid {= 25},
    WinBuiltinAdministratorsSid {= 26},
    WinBuiltinUsersSid {= 27},
    WinBuiltinGuestsSid {= 28},
    WinBuiltinPowerUsersSid {= 29},
    WinBuiltinAccountOperatorsSid {= 30},
    WinBuiltinSystemOperatorsSid {= 31},
    WinBuiltinPrintOperatorsSid {= 32},
    WinBuiltinBackupOperatorsSid {= 33},
    WinBuiltinReplicatorSid {= 34},
    WinBuiltinPreWindows2000CompatibleAccessSid {= 35},
    WinBuiltinRemoteDesktopUsersSid {= 36},
    WinBuiltinNetworkConfigurationOperatorsSid {= 37},
    WinAccountAdministratorSid {= 38},
    WinAccountGuestSid {= 39},
    WinAccountKrbtgtSid {= 40},
    WinAccountDomainAdminsSid {= 41},
    WinAccountDomainUsersSid {= 42},
    WinAccountDomainGuestsSid {= 43},
    WinAccountComputersSid {= 44},
    WinAccountControllersSid {= 45},
    WinAccountCertAdminsSid {= 46},
    WinAccountSchemaAdminsSid {= 47},
    WinAccountEnterpriseAdminsSid {= 48},
    WinAccountPolicyAdminsSid {= 49},
    WinAccountRasAndIasServersSid {= 50},
    WinNTLMAuthenticationSid {= 51},
    WinDigestAuthenticationSid {= 52},
    WinSChannelAuthenticationSid {= 53},
    WinThisOrganizationSid {= 54},
    WinOtherOrganizationSid {= 55},
    WinBuiltinIncomingForestTrustBuildersSid {= 56},
    WinBuiltinPerfMonitoringUsersSid {= 57},
    WinBuiltinPerfLoggingUsersSid {= 58},
    WinBuiltinAuthorizationAccessSid {= 59},
    WinBuiltinTerminalServerLicenseServersSid {= 60},
    WinBuiltinDCOMUsersSid {= 61},
    WinBuiltinIUsersSid {= 62},
    WinIUserSid {= 63},
    WinBuiltinCryptoOperatorsSid {= 64},
    WinUntrustedLabelSid {= 65},
    WinLowLabelSid {= 66},
    WinMediumLabelSid {= 67},
    WinHighLabelSid {= 68},
    WinSystemLabelSid {= 69},
    WinWriteRestrictedCodeSid {= 70},
    WinCreatorOwnerRightsSid {= 71},
    WinCacheablePrincipalsGroupSid {= 72},
    WinNonCacheablePrincipalsGroupSid {= 73},
    WinEnterpriseReadonlyControllersSid {= 74},
    WinAccountReadonlyControllersSid {= 75},
    WinBuiltinEventLogReadersGroup {= 76},
    WinNewEnterpriseReadonlyControllersSid {= 77},
    WinBuiltinCertSvcDComAccessGroup {= 78}
    WinMediumPlusLabelSid                       {= 79},
    WinLocalLogonSid                            {= 80},
    WinConsoleLogonSid                          {= 81},
    WinThisOrganizationCertificateSid           {= 82}
{$ELSE}
    WinNullSid,
    WinWorldSid,
    WinLocalSid,
    WinCreatorOwnerSid,
    WinCreatorGroupSid,
    WinCreatorOwnerServerSid,
    WinCreatorGroupServerSid,
    WinNtAuthoritySid,
    WinDialupSid,
    WinNetworkSid,
    WinBatchSid,
    WinInteractiveSid,
    WinServiceSid,
    WinAnonymousSid,
    WinProxySid,
    WinEnterpriseControllersSid,
    WinSelfSid,
    WinAuthenticatedUserSid,
    WinRestrictedCodeSid,
    WinTerminalServerSid,
    WinRemoteLogonIdSid,
    WinLogonIdsSid,
    WinLocalSystemSid,
    WinLocalServiceSid,
    WinNetworkServiceSid,
    WinBuiltinDomainSid,
    WinBuiltinAdministratorsSid,
    WinBuiltinUsersSid,
    WinBuiltinGuestsSid,
    WinBuiltinPowerUsersSid,
    WinBuiltinAccountOperatorsSid,
    WinBuiltinSystemOperatorsSid,
    WinBuiltinPrintOperatorsSid,
    WinBuiltinBackupOperatorsSid,
    WinBuiltinReplicatorSid,
    WinBuiltinPreWindows2000CompatibleAccessSid,
    WinBuiltinRemoteDesktopUsersSid,
    WinBuiltinNetworkConfigurationOperatorsSid,
    WinAccountAdministratorSid,
    WinAccountGuestSid,
    WinAccountKrbtgtSid,
    WinAccountDomainAdminsSid,
    WinAccountDomainUsersSid,
    WinAccountDomainGuestsSid,
    WinAccountComputersSid,
    WinAccountControllersSid,
    WinAccountCertAdminsSid,
    WinAccountSchemaAdminsSid,
    WinAccountEnterpriseAdminsSid,
    WinAccountPolicyAdminsSid,
    WinAccountRasAndIasServersSid,
    WinNTLMAuthenticationSid,
    WinDigestAuthenticationSid,
    WinSChannelAuthenticationSid,
    WinThisOrganizationSid,
    WinOtherOrganizationSid,
    WinBuiltinIncomingForestTrustBuildersSid,
    WinBuiltinPerfMonitoringUsersSid,
    WinBuiltinPerfLoggingUsersSid,
    WinBuiltinAuthorizationAccessSid,
    WinBuiltinTerminalServerLicenseServersSid
{$ENDIF WINVISTA_UP}
  );
  {$EXTERNALSYM WELL_KNOWN_SID_TYPE}
  TWellKnownSidType = WELL_KNOWN_SID_TYPE;



//
// Allocate the System Luid.  The first 1000 LUIDs are reserved.
// Use #999 here (0x3E7 = 999)
//

const
  SYSTEM_LUID: LUID = (LowPart: $3E7; HighPart: $0);
  {$EXTERNALSYM SYSTEM_LUID}
  ANONYMOUS_LOGON_LUID: LUID = (LowPart: $3E6; HighPart: $0);
  {$EXTERNALSYM ANONYMOUS_LOGON_LUID}
  LOCALSERVICE_LUID: LUID = (LowPart: $3E5; HighPart: $0);
  {$EXTERNALSYM LOCALSERVICE_LUID}
  NETWORKSERVICE_LUID: LUID = (LowPart: $3E4; HighPart: $0);
  {$EXTERNALSYM NETWORKSERVICE_LUID}
  IUSER_LUID: LUID = (LowPart: $3E3; HighPart: $0);
  {$EXTERNALSYM IUSER_LUID}

////////////////////////////////////////////////////////////////////////
//                                                                    //
//                          User and Group related SID attributes     //
//                                                                    //
////////////////////////////////////////////////////////////////////////

//
// Group attributes
//

  SE_GROUP_MANDATORY          = $00000001;
  {$EXTERNALSYM SE_GROUP_MANDATORY}
  SE_GROUP_ENABLED_BY_DEFAULT = $00000002;
  {$EXTERNALSYM SE_GROUP_ENABLED_BY_DEFAULT}
  SE_GROUP_ENABLED            = $00000004;
  {$EXTERNALSYM SE_GROUP_ENABLED}
  SE_GROUP_OWNER              = $00000008;
  {$EXTERNALSYM SE_GROUP_OWNER}
  SE_GROUP_USE_FOR_DENY_ONLY  = $00000010;
  {$EXTERNALSYM SE_GROUP_USE_FOR_DENY_ONLY}
  SE_GROUP_INTEGRITY          = $00000020;
  {$EXTERNALSYM SE_GROUP_INTEGRITY}
  SE_GROUP_INTEGRITY_ENABLED  = $00000040;
  {$EXTERNALSYM SE_GROUP_INTEGRITY_ENABLED}
  SE_GROUP_LOGON_ID           = $C0000000;
  {$EXTERNALSYM SE_GROUP_LOGON_ID}
  SE_GROUP_RESOURCE           = $20000000;
  {$EXTERNALSYM SE_GROUP_RESOURCE}

  SE_GROUP_VALID_ATTRIBUTES           = (SE_GROUP_MANDATORY or
    SE_GROUP_ENABLED_BY_DEFAULT or SE_GROUP_ENABLED or SE_GROUP_OWNER or
    SE_GROUP_USE_FOR_DENY_ONLY or SE_GROUP_LOGON_ID or SE_GROUP_RESOURCE or
    SE_GROUP_INTEGRITY or SE_GROUP_INTEGRITY_ENABLED);
  {$EXTERNALSYM SE_GROUP_VALID_ATTRIBUTES}

//
// User attributes
//

// (None yet defined.)

////////////////////////////////////////////////////////////////////////
//                                                                    //
//                         ACL  and  ACE                              //
//                                                                    //
////////////////////////////////////////////////////////////////////////

//
//  Define an ACL and the ACE format.  The structure of an ACL header
//  followed by one or more ACEs.  Pictorally the structure of an ACL header
//  is as follows:
//
//       3 3 2 2 2 2 2 2 2 2 2 2 1 1 1 1 1 1 1 1 1 1
//       1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
//      +-------------------------------+---------------+---------------+
//      |            AclSize            |      Sbz1     |  AclRevision  |
//      +-------------------------------+---------------+---------------+
//      |              Sbz2             |           AceCount            |
//      +-------------------------------+-------------------------------+
//
//  The current AclRevision is defined to be ACL_REVISION.
//
//  AclSize is the size, in bytes, allocated for the ACL.  This includes
//  the ACL header, ACES, and remaining free space in the buffer.
//
//  AceCount is the number of ACES in the ACL.
//

// This is the *current* ACL revision

  ACL_REVISION    = 2;
  {$EXTERNALSYM ACL_REVISION}
  ACL_REVISION_DS = 4;
  {$EXTERNALSYM ACL_REVISION_DS}

// This is the history of ACL revisions.  Add a new one whenever
// ACL_REVISION is updated

  ACL_REVISION1    = 1;
  {$EXTERNALSYM ACL_REVISION1}
  ACL_REVISION2    = 2;
  {$EXTERNALSYM ACL_REVISION2}
  MIN_ACL_REVISION = ACL_REVISION2;
  {$EXTERNALSYM MIN_ACL_REVISION}
  ACL_REVISION3    = 3;
  {$EXTERNALSYM ACL_REVISION3}
  ACL_REVISION4    = 4;
  {$EXTERNALSYM ACL_REVISION4}
  MAX_ACL_REVISION = ACL_REVISION4;
  {$EXTERNALSYM MAX_ACL_REVISION}

type
  PACL = ^ACL;
  {$EXTERNALSYM PACL}
  _ACL = record
    AclRevision: Byte;
    Sbz1: Byte;
    AclSize: Word;
    AceCount: Word;
    Sbz2: Word;
  end;
  {$EXTERNALSYM _ACL}
  ACL = _ACL;
  {$EXTERNALSYM ACL}
  TAcl = ACL;

  PPACL = ^PAcl;
  {$NODEFINE PPACL}

//
//  The structure of an ACE is a common ace header followed by ace type
//  specific data.  Pictorally the structure of the common ace header is
//  as follows:
//
//       3 3 2 2 2 2 2 2 2 2 2 2 1 1 1 1 1 1 1 1 1 1
//       1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
//      +---------------+-------+-------+---------------+---------------+
//      |            AceSize            |    AceFlags   |     AceType   |
//      +---------------+-------+-------+---------------+---------------+
//
//  AceType denotes the type of the ace, there are some predefined ace
//  types
//
//  AceSize is the size, in bytes, of ace.
//
//  AceFlags are the Ace flags for audit and inheritance, defined shortly.

type
  PACE_HEADER = ^ACE_HEADER;
  {$EXTERNALSYM PACE_HEADER}
  _ACE_HEADER = record
    AceType: Byte;
    AceFlags: Byte;
    AceSize: Word;
  end;
  {$EXTERNALSYM _ACE_HEADER}
  ACE_HEADER = _ACE_HEADER;
  {$EXTERNALSYM ACE_HEADER}
  TAceHeader = ACE_HEADER;
  PAceHeader = PACE_HEADER;

//
//  The following are the predefined ace types that go into the AceType
//  field of an Ace header.
//

const
  ACCESS_MIN_MS_ACE_TYPE    = $0;
  {$EXTERNALSYM ACCESS_MIN_MS_ACE_TYPE}
  ACCESS_ALLOWED_ACE_TYPE   = $0;
  {$EXTERNALSYM ACCESS_ALLOWED_ACE_TYPE}
  ACCESS_DENIED_ACE_TYPE    = $1;
  {$EXTERNALSYM ACCESS_DENIED_ACE_TYPE}
  SYSTEM_AUDIT_ACE_TYPE     = $2;
  {$EXTERNALSYM SYSTEM_AUDIT_ACE_TYPE}
  SYSTEM_ALARM_ACE_TYPE     = $3;
  {$EXTERNALSYM SYSTEM_ALARM_ACE_TYPE}
  ACCESS_MAX_MS_V2_ACE_TYPE = $3;
  {$EXTERNALSYM ACCESS_MAX_MS_V2_ACE_TYPE}

  ACCESS_ALLOWED_COMPOUND_ACE_TYPE = $4;
  {$EXTERNALSYM ACCESS_ALLOWED_COMPOUND_ACE_TYPE}
  ACCESS_MAX_MS_V3_ACE_TYPE        = $4;
  {$EXTERNALSYM ACCESS_MAX_MS_V3_ACE_TYPE}

  ACCESS_MIN_MS_OBJECT_ACE_TYPE  = $5;
  {$EXTERNALSYM ACCESS_MIN_MS_OBJECT_ACE_TYPE}
  ACCESS_ALLOWED_OBJECT_ACE_TYPE = $5;
  {$EXTERNALSYM ACCESS_ALLOWED_OBJECT_ACE_TYPE}
  ACCESS_DENIED_OBJECT_ACE_TYPE  = $6;
  {$EXTERNALSYM ACCESS_DENIED_OBJECT_ACE_TYPE}
  SYSTEM_AUDIT_OBJECT_ACE_TYPE   = $7;
  {$EXTERNALSYM SYSTEM_AUDIT_OBJECT_ACE_TYPE}
  SYSTEM_ALARM_OBJECT_ACE_TYPE   = $8;
  {$EXTERNALSYM SYSTEM_ALARM_OBJECT_ACE_TYPE}
  ACCESS_MAX_MS_OBJECT_ACE_TYPE  = $8;
  {$EXTERNALSYM ACCESS_MAX_MS_OBJECT_ACE_TYPE}

  ACCESS_MAX_MS_V4_ACE_TYPE = $8;
  {$EXTERNALSYM ACCESS_MAX_MS_V4_ACE_TYPE}
  ACCESS_MAX_MS_ACE_TYPE    = $8;
  {$EXTERNALSYM ACCESS_MAX_MS_ACE_TYPE}

  ACCESS_ALLOWED_CALLBACK_ACE_TYPE        = $9;
  {$EXTERNALSYM ACCESS_ALLOWED_CALLBACK_ACE_TYPE}
  ACCESS_DENIED_CALLBACK_ACE_TYPE         = $A;
  {$EXTERNALSYM ACCESS_DENIED_CALLBACK_ACE_TYPE}
  ACCESS_ALLOWED_CALLBACK_OBJECT_ACE_TYPE = $B;
  {$EXTERNALSYM ACCESS_ALLOWED_CALLBACK_OBJECT_ACE_TYPE}
  ACCESS_DENIED_CALLBACK_OBJECT_ACE_TYPE  = $C;
  {$EXTERNALSYM ACCESS_DENIED_CALLBACK_OBJECT_ACE_TYPE}
  SYSTEM_AUDIT_CALLBACK_ACE_TYPE          = $D;
  {$EXTERNALSYM SYSTEM_AUDIT_CALLBACK_ACE_TYPE}
  SYSTEM_ALARM_CALLBACK_ACE_TYPE          = $E;
  {$EXTERNALSYM SYSTEM_ALARM_CALLBACK_ACE_TYPE}
  SYSTEM_AUDIT_CALLBACK_OBJECT_ACE_TYPE   = $F;
  {$EXTERNALSYM SYSTEM_AUDIT_CALLBACK_OBJECT_ACE_TYPE}
  SYSTEM_ALARM_CALLBACK_OBJECT_ACE_TYPE   = $10;
  {$EXTERNALSYM SYSTEM_ALARM_CALLBACK_OBJECT_ACE_TYPE}

  SYSTEM_MANDATORY_LABEL_ACE_TYPE = $11;
  {$EXTERNALSYM SYSTEM_MANDATORY_LABEL_ACE_TYPE}
  ACCESS_MAX_MS_V5_ACE_TYPE               = $11;
  {$EXTERNALSYM ACCESS_MAX_MS_V5_ACE_TYPE}

//
//  The following are the inherit flags that go into the AceFlags field
//  of an Ace header.
//

  OBJECT_INHERIT_ACE       = $1;
  {$EXTERNALSYM OBJECT_INHERIT_ACE}
  CONTAINER_INHERIT_ACE    = $2;
  {$EXTERNALSYM CONTAINER_INHERIT_ACE}
  NO_PROPAGATE_INHERIT_ACE = $4;
  {$EXTERNALSYM NO_PROPAGATE_INHERIT_ACE}
  INHERIT_ONLY_ACE         = $8;
  {$EXTERNALSYM INHERIT_ONLY_ACE}
  INHERITED_ACE            = $10;
  {$EXTERNALSYM INHERITED_ACE}
  VALID_INHERIT_FLAGS      = $1F;
  {$EXTERNALSYM VALID_INHERIT_FLAGS}

//  The following are the currently defined ACE flags that go into the
//  AceFlags field of an ACE header.  Each ACE type has its own set of
//  AceFlags.
//
//  SUCCESSFUL_ACCESS_ACE_FLAG - used only with system audit and alarm ACE
//  types to indicate that a message is generated for successful accesses.
//
//  FAILED_ACCESS_ACE_FLAG - used only with system audit and alarm ACE types
//  to indicate that a message is generated for failed accesses.
//

//
//  SYSTEM_AUDIT and SYSTEM_ALARM AceFlags
//
//  These control the signaling of audit and alarms for success or failure.
//

  SUCCESSFUL_ACCESS_ACE_FLAG = $40;
  {$EXTERNALSYM SUCCESSFUL_ACCESS_ACE_FLAG}
  FAILED_ACCESS_ACE_FLAG     = $80;
  {$EXTERNALSYM FAILED_ACCESS_ACE_FLAG}

//
//  We'll define the structure of the predefined ACE types.  Pictorally
//  the structure of the predefined ACE's is as follows:
//
//       3 3 2 2 2 2 2 2 2 2 2 2 1 1 1 1 1 1 1 1 1 1
//       1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
//      +---------------+-------+-------+---------------+---------------+
//      |    AceFlags   | Resd  |Inherit|    AceSize    |     AceType   |
//      +---------------+-------+-------+---------------+---------------+
//      |                              Mask                             |
//      +---------------------------------------------------------------+
//      |                                                               |
//      +                                                               +
//      |                                                               |
//      +                              Sid                              +
//      |                                                               |
//      +                                                               +
//      |                                                               |
//      +---------------------------------------------------------------+
//
//  Mask is the access mask associated with the ACE.  This is either the
//  access allowed, access denied, audit, or alarm mask.
//
//  Sid is the Sid associated with the ACE.
//

//  The following are the four predefined ACE types.

//  Examine the AceType field in the Header to determine
//  which structure is appropriate to use for casting.

type
  PACCESS_ALLOWED_ACE = ^ACCESS_ALLOWED_ACE;
  {$EXTERNALSYM PACCESS_ALLOWED_ACE}
  _ACCESS_ALLOWED_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    SidStart: DWORD;
  end;
  {$EXTERNALSYM _ACCESS_ALLOWED_ACE}
  ACCESS_ALLOWED_ACE = _ACCESS_ALLOWED_ACE;
  {$EXTERNALSYM ACCESS_ALLOWED_ACE}
  TAccessAllowedAce = ACCESS_ALLOWED_ACE;
  PAccessAllowedAce = PACCESS_ALLOWED_ACE;

  PACCESS_DENIED_ACE = ^ACCESS_DENIED_ACE;
  {$EXTERNALSYM PACCESS_DENIED_ACE}
  _ACCESS_DENIED_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    SidStart: DWORD;
  end;
  {$EXTERNALSYM _ACCESS_DENIED_ACE}
  ACCESS_DENIED_ACE = _ACCESS_DENIED_ACE;
  {$EXTERNALSYM ACCESS_DENIED_ACE}
  TAccessDeniedAce = ACCESS_DENIED_ACE;
  PAccessDeniedAce = PACCESS_DENIED_ACE;

  PSYSTEM_AUDIT_ACE = ^SYSTEM_AUDIT_ACE;
  {$EXTERNALSYM PSYSTEM_AUDIT_ACE}
  _SYSTEM_AUDIT_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    SidStart: DWORD;
  end;
  {$EXTERNALSYM _SYSTEM_AUDIT_ACE}
  SYSTEM_AUDIT_ACE = _SYSTEM_AUDIT_ACE;
  {$EXTERNALSYM SYSTEM_AUDIT_ACE}
  TSystemAuditAce = SYSTEM_AUDIT_ACE;
  PSystemAuditAce = PSYSTEM_AUDIT_ACE;

  PSYSTEM_ALARM_ACE = ^SYSTEM_ALARM_ACE;
  {$EXTERNALSYM PSYSTEM_ALARM_ACE}
  _SYSTEM_ALARM_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    SidStart: DWORD;
  end;
  {$EXTERNALSYM _SYSTEM_ALARM_ACE}
  SYSTEM_ALARM_ACE = _SYSTEM_ALARM_ACE;
  {$EXTERNALSYM SYSTEM_ALARM_ACE}
  TSystemAlarmAce = SYSTEM_ALARM_ACE;
  PSystemAlarmAce = PSYSTEM_ALARM_ACE;

  //http://msdn2.microsoft.com/en-us/library/aa965848.aspx
  _SYSTEM_MANDATORY_LABEL_ACE = record
    Header : ACE_HEADER;
    Mask : ACCESS_MASK;
    SidStart : DWORD;
  end;
  {$EXTERNALSYM _SYSTEM_MANDATORY_LABEL_ACE}

  SYSTEM_MANDATORY_LABEL_ACE = _SYSTEM_MANDATORY_LABEL_ACE;
  PSYSTEM_MANDATORY_LABEL_ACE = ^_SYSTEM_MANDATORY_LABEL_ACE;

  TSystemMandatoryLabelAce = _SYSTEM_MANDATORY_LABEL_ACE;
  PSystemMandatoryLabelAce = ^TSystemMandatoryLabelAce;

const
  //A principal with a lower mandatory level than the object cannot write to the object.
  SYSTEM_MANDATORY_LABEL_NO_WRITE_UP = $1;
  {$EXTERNALSYM SYSTEM_MANDATORY_LABEL_NO_WRITE_UP}
  //A principal with a lower mandatory level than the object cannot read the object.
  SYSTEM_MANDATORY_LABEL_NO_READ_UP = $2;
  {$EXTERNALSYM SYSTEM_MANDATORY_LABEL_NO_READ_UP}
  //A principal with a lower mandatory level than the object cannot execute the object.
  SYSTEM_MANDATORY_LABEL_NO_EXECUTE_UP = $4;
  {$EXTERNALSYM SYSTEM_MANDATORY_LABEL_NO_EXECUTE_UP}

  {$EXTERNALSYM SYSTEM_MANDATORY_LABEL_VALID_MASK}
  SYSTEM_MANDATORY_LABEL_VALID_MASK   = (SYSTEM_MANDATORY_LABEL_NO_WRITE_UP or
    SYSTEM_MANDATORY_LABEL_NO_READ_UP or SYSTEM_MANDATORY_LABEL_NO_EXECUTE_UP);
// end_ntifs


type
  PACCESS_ALLOWED_OBJECT_ACE = ^ACCESS_ALLOWED_OBJECT_ACE;
  {$EXTERNALSYM PACCESS_ALLOWED_OBJECT_ACE}
  _ACCESS_ALLOWED_OBJECT_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    Flags: DWORD;
    ObjectType: GUID;
    InheritedObjectType: GUID;
    SidStart: DWORD;
  end;
  {$EXTERNALSYM _ACCESS_ALLOWED_OBJECT_ACE}
  ACCESS_ALLOWED_OBJECT_ACE = _ACCESS_ALLOWED_OBJECT_ACE;
  {$EXTERNALSYM ACCESS_ALLOWED_OBJECT_ACE}
  TAccessAllowedObjectAce = ACCESS_ALLOWED_OBJECT_ACE;
  PAccessAllowedObjectAce = PACCESS_ALLOWED_OBJECT_ACE;

  PACCESS_DENIED_OBJECT_ACE = ^ACCESS_DENIED_OBJECT_ACE;
  {$EXTERNALSYM PACCESS_DENIED_OBJECT_ACE}
  _ACCESS_DENIED_OBJECT_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    Flags: DWORD;
    ObjectType: GUID;
    InheritedObjectType: GUID;
    SidStart: DWORD;
  end;
  {$EXTERNALSYM _ACCESS_DENIED_OBJECT_ACE}
  ACCESS_DENIED_OBJECT_ACE = _ACCESS_DENIED_OBJECT_ACE;
  {$EXTERNALSYM ACCESS_DENIED_OBJECT_ACE}
  TAccessDeniedObjectAce = ACCESS_DENIED_OBJECT_ACE;
  PAccessDeniedObjectAce = PACCESS_DENIED_OBJECT_ACE;

  PSYSTEM_AUDIT_OBJECT_ACE = ^SYSTEM_AUDIT_OBJECT_ACE;
  {$EXTERNALSYM PSYSTEM_AUDIT_OBJECT_ACE}
  _SYSTEM_AUDIT_OBJECT_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    Flags: DWORD;
    ObjectType: GUID;
    InheritedObjectType: GUID;
    SidStart: DWORD;
  end;
  {$EXTERNALSYM _SYSTEM_AUDIT_OBJECT_ACE}
  SYSTEM_AUDIT_OBJECT_ACE = _SYSTEM_AUDIT_OBJECT_ACE;
  {$EXTERNALSYM SYSTEM_AUDIT_OBJECT_ACE}
  TSystemAuditObjectAce = SYSTEM_AUDIT_OBJECT_ACE;
  PSystemAuditObjectAce = PSYSTEM_AUDIT_OBJECT_ACE;

  PSYSTEM_ALARM_OBJECT_ACE = ^SYSTEM_ALARM_OBJECT_ACE;
  {$EXTERNALSYM PSYSTEM_ALARM_OBJECT_ACE}
  _SYSTEM_ALARM_OBJECT_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    Flags: DWORD;
    ObjectType: GUID;
    InheritedObjectType: GUID;
    SidStart: DWORD;
  end;
  {$EXTERNALSYM _SYSTEM_ALARM_OBJECT_ACE}
  SYSTEM_ALARM_OBJECT_ACE = _SYSTEM_ALARM_OBJECT_ACE;
  {$EXTERNALSYM SYSTEM_ALARM_OBJECT_ACE}
  TSystemAlarmObjectAce = SYSTEM_ALARM_OBJECT_ACE;
  PSystemAlarmObjectAce = PSYSTEM_ALARM_OBJECT_ACE;

//
// Callback ace support in post Win2000.
// Resource managers can put their own data after Sidstart + Length of the sid
//

  _ACCESS_ALLOWED_CALLBACK_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    SidStart: DWORD;
    // Opaque resouce manager specific data
  end;
  {$EXTERNALSYM _ACCESS_ALLOWED_CALLBACK_ACE}
  ACCESS_ALLOWED_CALLBACK_ACE = _ACCESS_ALLOWED_CALLBACK_ACE;
  {$EXTERNALSYM ACCESS_ALLOWED_CALLBACK_ACE}
  PACCESS_ALLOWED_CALLBACK_ACE = ^ACCESS_ALLOWED_CALLBACK_ACE;
  {$EXTERNALSYM PACCESS_ALLOWED_CALLBACK_ACE}
  TAccessAllowedCallBackAce = ACCESS_ALLOWED_CALLBACK_ACE;
  PAccessAllowedCallBackAce = PACCESS_ALLOWED_CALLBACK_ACE;

  _ACCESS_DENIED_CALLBACK_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    SidStart: DWORD;
    // Opaque resouce manager specific data
  end;
  {$EXTERNALSYM _ACCESS_DENIED_CALLBACK_ACE}
  ACCESS_DENIED_CALLBACK_ACE = _ACCESS_DENIED_CALLBACK_ACE;
  {$EXTERNALSYM ACCESS_DENIED_CALLBACK_ACE}
  PACCESS_DENIED_CALLBACK_ACE = ^ACCESS_DENIED_CALLBACK_ACE;
  {$EXTERNALSYM PACCESS_DENIED_CALLBACK_ACE}
  TAccessDeniedCallBackAce = ACCESS_DENIED_CALLBACK_ACE;
  PAccessDeniedCallBackAce = PACCESS_DENIED_CALLBACK_ACE;

  _SYSTEM_AUDIT_CALLBACK_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    SidStart: DWORD;
    // Opaque resouce manager specific data
  end;
  {$EXTERNALSYM _SYSTEM_AUDIT_CALLBACK_ACE}
  SYSTEM_AUDIT_CALLBACK_ACE = _SYSTEM_AUDIT_CALLBACK_ACE;
  {$EXTERNALSYM SYSTEM_AUDIT_CALLBACK_ACE}
  PSYSTEM_AUDIT_CALLBACK_ACE = ^SYSTEM_AUDIT_CALLBACK_ACE;
  {$EXTERNALSYM PSYSTEM_AUDIT_CALLBACK_ACE}
  TSystemAuditCallBackAce = SYSTEM_AUDIT_CALLBACK_ACE;
  PSystemAuditCallBackAce = PSYSTEM_AUDIT_CALLBACK_ACE;

  _SYSTEM_ALARM_CALLBACK_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    SidStart: DWORD;
    // Opaque resouce manager specific data
  end;
  {$EXTERNALSYM _SYSTEM_ALARM_CALLBACK_ACE}
  SYSTEM_ALARM_CALLBACK_ACE = _SYSTEM_ALARM_CALLBACK_ACE;
  {$EXTERNALSYM SYSTEM_ALARM_CALLBACK_ACE}
  PSYSTEM_ALARM_CALLBACK_ACE = ^SYSTEM_ALARM_CALLBACK_ACE;
  {$EXTERNALSYM PSYSTEM_ALARM_CALLBACK_ACE}
  TSystemAlarmCallBackAce = SYSTEM_ALARM_CALLBACK_ACE;
  PSystemAlarmCallBackAce = PSYSTEM_ALARM_CALLBACK_ACE;

  _ACCESS_ALLOWED_CALLBACK_OBJECT_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    Flags: DWORD;
    ObjectType: GUID;
    InheritedObjectType: GUID;
    SidStart: DWORD;
    // Opaque resouce manager specific data
  end;
  {$EXTERNALSYM _ACCESS_ALLOWED_CALLBACK_OBJECT_ACE}
  ACCESS_ALLOWED_CALLBACK_OBJECT_ACE = _ACCESS_ALLOWED_CALLBACK_OBJECT_ACE;
  {$EXTERNALSYM ACCESS_ALLOWED_CALLBACK_OBJECT_ACE}
  PACCESS_ALLOWED_CALLBACK_OBJECT_ACE = ^ACCESS_ALLOWED_CALLBACK_OBJECT_ACE;
  {$EXTERNALSYM PACCESS_ALLOWED_CALLBACK_OBJECT_ACE}
  TAccessAllowedCallBackObjectAce = ACCESS_ALLOWED_CALLBACK_OBJECT_ACE;
  PAccessAllowedCallBackObjectAce = PACCESS_ALLOWED_CALLBACK_OBJECT_ACE;

  _ACCESS_DENIED_CALLBACK_OBJECT_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    Flags: DWORD;
    ObjectType: GUID;
    InheritedObjectType: GUID;
    SidStart: DWORD;
    // Opaque resouce manager specific data
  end;
  {$EXTERNALSYM _ACCESS_DENIED_CALLBACK_OBJECT_ACE}
  ACCESS_DENIED_CALLBACK_OBJECT_ACE = _ACCESS_DENIED_CALLBACK_OBJECT_ACE;
  {$EXTERNALSYM ACCESS_DENIED_CALLBACK_OBJECT_ACE}
  PACCESS_DENIED_CALLBACK_OBJECT_ACE = ^ACCESS_DENIED_CALLBACK_OBJECT_ACE;
  {$EXTERNALSYM PACCESS_DENIED_CALLBACK_OBJECT_ACE}
  TAccessDeniedCallBackObjectAce = ACCESS_DENIED_CALLBACK_OBJECT_ACE;
  PAccessDeniedCallBackObjectAce = PACCESS_DENIED_CALLBACK_OBJECT_ACE;

  _SYSTEM_AUDIT_CALLBACK_OBJECT_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    Flags: DWORD;
    ObjectType: GUID;
    InheritedObjectType: GUID;
    SidStart: DWORD;
    // Opaque resouce manager specific data
  end;
  {$EXTERNALSYM _SYSTEM_AUDIT_CALLBACK_OBJECT_ACE}
  SYSTEM_AUDIT_CALLBACK_OBJECT_ACE = _SYSTEM_AUDIT_CALLBACK_OBJECT_ACE;
  {$EXTERNALSYM SYSTEM_AUDIT_CALLBACK_OBJECT_ACE}
  PSYSTEM_AUDIT_CALLBACK_OBJECT_ACE = ^SYSTEM_AUDIT_CALLBACK_OBJECT_ACE;
  {$EXTERNALSYM PSYSTEM_AUDIT_CALLBACK_OBJECT_ACE}
  TSystemAuditCallBackObjectAce = SYSTEM_AUDIT_CALLBACK_OBJECT_ACE;
  PSystemAuditCallBackObjectAce = PSYSTEM_AUDIT_CALLBACK_OBJECT_ACE;

  _SYSTEM_ALARM_CALLBACK_OBJECT_ACE = record
    Header: ACE_HEADER;
    Mask: ACCESS_MASK;
    Flags: DWORD;
    ObjectType: GUID;
    InheritedObjectType: GUID;
    SidStart: DWORD;
    // Opaque resouce manager specific data
  end;
  {$EXTERNALSYM _SYSTEM_ALARM_CALLBACK_OBJECT_ACE}
  SYSTEM_ALARM_CALLBACK_OBJECT_ACE = _SYSTEM_ALARM_CALLBACK_OBJECT_ACE;
  {$EXTERNALSYM SYSTEM_ALARM_CALLBACK_OBJECT_ACE}
  PSYSTEM_ALARM_CALLBACK_OBJECT_ACE = ^SYSTEM_ALARM_CALLBACK_OBJECT_ACE;
  {$EXTERNALSYM PSYSTEM_ALARM_CALLBACK_OBJECT_ACE}
  TSystemAlarmCallBackObjectAce = SYSTEM_ALARM_CALLBACK_OBJECT_ACE;
  PSystemAlarmCallBackObjectAce = PSYSTEM_ALARM_CALLBACK_OBJECT_ACE;

//
// Currently define Flags for "OBJECT" ACE types.
//

const
  ACE_OBJECT_TYPE_PRESENT           = $1;
  {$EXTERNALSYM ACE_OBJECT_TYPE_PRESENT}
  ACE_INHERITED_OBJECT_TYPE_PRESENT = $2;
  {$EXTERNALSYM ACE_INHERITED_OBJECT_TYPE_PRESENT}

//
//  The following declarations are used for setting and querying information
//  about and ACL.  First are the various information classes available to
//  the user.
//

  AclRevisionInformation = 1;
  {$EXTERNALSYM AclRevisionInformation}
  AclSizeInformation = 2;
  {$EXTERNALSYM AclSizeInformation}

type
  _ACL_INFORMATION_CLASS = DWORD;
  {$EXTERNALSYM _ACL_INFORMATION_CLASS}
  ACL_INFORMATION_CLASS = _ACL_INFORMATION_CLASS;
  {$EXTERNALSYM ACL_INFORMATION_CLASS}
  TAclInformationClass = ACL_INFORMATION_CLASS;

//
//  This record is returned/sent if the user is requesting/setting the
//  AclRevisionInformation
//

  PACL_REVISION_INFORMATION = ^ACL_REVISION_INFORMATION;
  {$EXTERNALSYM PACL_REVISION_INFORMATION}
  _ACL_REVISION_INFORMATION = record
    AclRevision: DWORD;
  end;
  {$EXTERNALSYM _ACL_REVISION_INFORMATION}
  ACL_REVISION_INFORMATION = _ACL_REVISION_INFORMATION;
  {$EXTERNALSYM ACL_REVISION_INFORMATION}
  TAclRevisionInformation = ACL_REVISION_INFORMATION;
  PAclRevisionInformation = PACL_REVISION_INFORMATION;

//
//  This record is returned if the user is requesting AclSizeInformation
//

  PACL_SIZE_INFORMATION = ^ACL_SIZE_INFORMATION;
  {$EXTERNALSYM PACL_SIZE_INFORMATION}
  _ACL_SIZE_INFORMATION = record
    AceCount: DWORD;
    AclBytesInUse: DWORD;
    AclBytesFree: DWORD;
  end;
  {$EXTERNALSYM _ACL_SIZE_INFORMATION}
  ACL_SIZE_INFORMATION = _ACL_SIZE_INFORMATION;
  {$EXTERNALSYM ACL_SIZE_INFORMATION}
  TAclSizeInformation = ACL_SIZE_INFORMATION;
  PAclSizeInformation = PACL_SIZE_INFORMATION;

////////////////////////////////////////////////////////////////////////
//                                                                    //
//                             SECURITY_DESCRIPTOR                    //
//                                                                    //
////////////////////////////////////////////////////////////////////////
//
//  Define the Security Descriptor and related data types.
//  This is an opaque data structure.
//

//
// Current security descriptor revision value
//

const
  SECURITY_DESCRIPTOR_REVISION  = 1;
  {$EXTERNALSYM SECURITY_DESCRIPTOR_REVISION}
  SECURITY_DESCRIPTOR_REVISION1 = 1;
  {$EXTERNALSYM SECURITY_DESCRIPTOR_REVISION1}

type
  SECURITY_DESCRIPTOR_CONTROL = WORD;
  {$EXTERNALSYM SECURITY_DESCRIPTOR_CONTROL}
  PSECURITY_DESCRIPTOR_CONTROL = ^SECURITY_DESCRIPTOR_CONTROL;
  {$EXTERNALSYM PSECURITY_DESCRIPTOR_CONTROL}
  TSecurityDescriptorControl = SECURITY_DESCRIPTOR_CONTROL;
  PSecurityDescriptorControl = PSECURITY_DESCRIPTOR_CONTROL;

const
  SE_OWNER_DEFAULTED       = $0001;
  {$EXTERNALSYM SE_OWNER_DEFAULTED}
  SE_GROUP_DEFAULTED       = $0002;
  {$EXTERNALSYM SE_GROUP_DEFAULTED}
  SE_DACL_PRESENT          = $0004;
  {$EXTERNALSYM SE_DACL_PRESENT}
  SE_DACL_DEFAULTED        = $0008;
  {$EXTERNALSYM SE_DACL_DEFAULTED}
  SE_SACL_PRESENT          = $0010;
  {$EXTERNALSYM SE_SACL_PRESENT}
  SE_SACL_DEFAULTED        = $0020;
  {$EXTERNALSYM SE_SACL_DEFAULTED}
  SE_DACL_AUTO_INHERIT_REQ = $0100;
  {$EXTERNALSYM SE_DACL_AUTO_INHERIT_REQ}
  SE_SACL_AUTO_INHERIT_REQ = $0200;
  {$EXTERNALSYM SE_SACL_AUTO_INHERIT_REQ}
  SE_DACL_AUTO_INHERITED   = $0400;
  {$EXTERNALSYM SE_DACL_AUTO_INHERITED}
  SE_SACL_AUTO_INHERITED   = $0800;
  {$EXTERNALSYM SE_SACL_AUTO_INHERITED}
  SE_DACL_PROTECTED        = $1000;
  {$EXTERNALSYM SE_DACL_PROTECTED}
  SE_SACL_PROTECTED        = $2000;
  {$EXTERNALSYM SE_SACL_PROTECTED}
  SE_RM_CONTROL_VALID      = $4000;
  {$EXTERNALSYM SE_RM_CONTROL_VALID}
  SE_SELF_RELATIVE         = $8000;
  {$EXTERNALSYM SE_SELF_RELATIVE}

//
//  Where:
//
//      SE_OWNER_DEFAULTED - This boolean flag, when set, indicates that the
//          SID pointed to by the Owner field was provided by a
//          defaulting mechanism rather than explicitly provided by the
//          original provider of the security descriptor.  This may
//          affect the treatment of the SID with respect to inheritence
//          of an owner.
//
//      SE_GROUP_DEFAULTED - This boolean flag, when set, indicates that the
//          SID in the Group field was provided by a defaulting mechanism
//          rather than explicitly provided by the original provider of
//          the security descriptor.  This may affect the treatment of
//          the SID with respect to inheritence of a primary group.
//
//      SE_DACL_PRESENT - This boolean flag, when set, indicates that the
//          security descriptor contains a discretionary ACL.  If this
//          flag is set and the Dacl field of the SECURITY_DESCRIPTOR is
//          null, then a null ACL is explicitly being specified.
//
//      SE_DACL_DEFAULTED - This boolean flag, when set, indicates that the
//          ACL pointed to by the Dacl field was provided by a defaulting
//          mechanism rather than explicitly provided by the original
//          provider of the security descriptor.  This may affect the
//          treatment of the ACL with respect to inheritence of an ACL.
//          This flag is ignored if the DaclPresent flag is not set.
//
//      SE_SACL_PRESENT - This boolean flag, when set,  indicates that the
//          security descriptor contains a system ACL pointed to by the
//          Sacl field.  If this flag is set and the Sacl field of the
//          SECURITY_DESCRIPTOR is null, then an empty (but present)
//          ACL is being specified.
//
//      SE_SACL_DEFAULTED - This boolean flag, when set, indicates that the
//          ACL pointed to by the Sacl field was provided by a defaulting
//          mechanism rather than explicitly provided by the original
//          provider of the security descriptor.  This may affect the
//          treatment of the ACL with respect to inheritence of an ACL.
//          This flag is ignored if the SaclPresent flag is not set.
//
//      SE_SELF_RELATIVE - This boolean flag, when set, indicates that the
//          security descriptor is in self-relative form.  In this form,
//          all fields of the security descriptor are contiguous in memory
//          and all pointer fields are expressed as offsets from the
//          beginning of the security descriptor.  This form is useful
//          for treating security descriptors as opaque data structures
//          for transmission in communication protocol or for storage on
//          secondary media.
//
//
//
// Pictorially the structure of a security descriptor is as follows:
//
//       3 3 2 2 2 2 2 2 2 2 2 2 1 1 1 1 1 1 1 1 1 1
//       1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
//      +---------------------------------------------------------------+
//      |            Control            |Reserved1 (SBZ)|   Revision    |
//      +---------------------------------------------------------------+
//      |                            Owner                              |
//      +---------------------------------------------------------------+
//      |                            Group                              |
//      +---------------------------------------------------------------+
//      |                            Sacl                               |
//      +---------------------------------------------------------------+
//      |                            Dacl                               |
//      +---------------------------------------------------------------+
//
// In general, this data structure should be treated opaquely to ensure future
// compatibility.
//
//

type
  PSECURITY_DESCRIPTOR_RELATIVE = ^SECURITY_DESCRIPTOR_RELATIVE;
  {$EXTERNALSYM PSECURITY_DESCRIPTOR_RELATIVE}
  _SECURITY_DESCRIPTOR_RELATIVE = record
    Revision: Byte;
    Sbz1: Byte;
    Control: SECURITY_DESCRIPTOR_CONTROL;
    Owner: DWORD;
    Group: DWORD;
    Sacl: DWORD;
    Dacl: DWORD;
  end;
  {$EXTERNALSYM _SECURITY_DESCRIPTOR_RELATIVE}
  SECURITY_DESCRIPTOR_RELATIVE = _SECURITY_DESCRIPTOR_RELATIVE;
  {$EXTERNALSYM SECURITY_DESCRIPTOR_RELATIVE}
  TSecurityDescriptorRelative = SECURITY_DESCRIPTOR_RELATIVE;
  PSecurityDescriptorRelative = PSECURITY_DESCRIPTOR_RELATIVE;

  PSECURITY_DESCRIPTOR = ^SECURITY_DESCRIPTOR;
  {$EXTERNALSYM PSECURITY_DESCRIPTOR}
  _SECURITY_DESCRIPTOR = record
    Revision: Byte;
    Sbz1: Byte;
    Control: SECURITY_DESCRIPTOR_CONTROL;
    Owner: PSID;
    Group: PSID;
    Sacl: PACL;
    Dacl: PACL;
  end;
  {$EXTERNALSYM _SECURITY_DESCRIPTOR}
  SECURITY_DESCRIPTOR = _SECURITY_DESCRIPTOR;
  {$EXTERNALSYM SECURITY_DESCRIPTOR}
  TSecurityDescriptor = SECURITY_DESCRIPTOR;
  PSecurityDescriptor = PSECURITY_DESCRIPTOR;

  PPSECURITY_DESCRIPTOR = ^PSECURITY_DESCRIPTOR;
  {$NODEFINE PPSECURITY_DESCRIPTOR}

const
  SECURITY_DESCRIPTOR_MIN_LENGTH = SizeOf(SECURITY_DESCRIPTOR);
  {$EXTERNALSYM SECURITY_DESCRIPTOR_MIN_LENGTH}

// Where:
//
//     Revision - Contains the revision level of the security
//         descriptor.  This allows this structure to be passed between
//         systems or stored on disk even though it is expected to
//         change in the future.
//
//     Control - A set of flags which qualify the meaning of the
//         security descriptor or individual fields of the security
//         descriptor.
//
//     Owner - is a pointer to an SID representing an object's owner.
//         If this field is null, then no owner SID is present in the
//         security descriptor.  If the security descriptor is in
//         self-relative form, then this field contains an offset to
//         the SID, rather than a pointer.
//
//     Group - is a pointer to an SID representing an object's primary
//         group.  If this field is null, then no primary group SID is
//         present in the security descriptor.  If the security descriptor
//         is in self-relative form, then this field contains an offset to
//         the SID, rather than a pointer.
//
//     Sacl - is a pointer to a system ACL.  This field value is only
//         valid if the DaclPresent control flag is set.  If the
//         SaclPresent flag is set and this field is null, then a null
//         ACL  is specified.  If the security descriptor is in
//         self-relative form, then this field contains an offset to
//         the ACL, rather than a pointer.
//
//     Dacl - is a pointer to a discretionary ACL.  This field value is
//         only valid if the DaclPresent control flag is set.  If the
//         DaclPresent flag is set and this field is null, then a null
//         ACL (unconditionally granting access) is specified.  If the
//         security descriptor is in self-relative form, then this field
//         contains an offset to the ACL, rather than a pointer.
//

////////////////////////////////////////////////////////////////////////
//                                                                    //
//               Object Type list for AccessCheckByType               //
//                                                                    //
////////////////////////////////////////////////////////////////////////

type
  POBJECT_TYPE_LIST = ^OBJECT_TYPE_LIST;
  {$EXTERNALSYM POBJECT_TYPE_LIST}
  _OBJECT_TYPE_LIST = record
    Level: Word;
    Sbz: Word;
    ObjectType: PGUID;
  end;
  {$EXTERNALSYM _OBJECT_TYPE_LIST}
  OBJECT_TYPE_LIST = _OBJECT_TYPE_LIST;
  {$EXTERNALSYM OBJECT_TYPE_LIST}
  TObjectTypeList = OBJECT_TYPE_LIST;
  PObjectTypeList = POBJECT_TYPE_LIST;

//
// DS values for Level
//

const
  ACCESS_OBJECT_GUID       = 0;
  {$EXTERNALSYM ACCESS_OBJECT_GUID}
  ACCESS_PROPERTY_SET_GUID = 1;
  {$EXTERNALSYM ACCESS_PROPERTY_SET_GUID}
  ACCESS_PROPERTY_GUID     = 2;
  {$EXTERNALSYM ACCESS_PROPERTY_GUID}

  ACCESS_MAX_LEVEL         = 4;
  {$EXTERNALSYM ACCESS_MAX_LEVEL}

//
// Parameters to NtAccessCheckByTypeAndAditAlarm
//

type
  _AUDIT_EVENT_TYPE = (AuditEventObjectAccess, AuditEventDirectoryServiceAccess);
  {$EXTERNALSYM _AUDIT_EVENT_TYPE}
  AUDIT_EVENT_TYPE = _AUDIT_EVENT_TYPE;
  {$EXTERNALSYM AUDIT_EVENT_TYPE}
  PAUDIT_EVENT_TYPE = ^AUDIT_EVENT_TYPE;
  {$EXTERNALSYM PAUDIT_EVENT_TYPE}
  TAuditEventType = AUDIT_EVENT_TYPE;
  PAuditEventType = PAUDIT_EVENT_TYPE;

const
  AUDIT_ALLOW_NO_PRIVILEGE = $1;
  {$EXTERNALSYM AUDIT_ALLOW_NO_PRIVILEGE}

//
// DS values for Source and ObjectTypeName
//

  ACCESS_DS_SOURCE_A           = 'DS';
  {$EXTERNALSYM ACCESS_DS_SOURCE_A}
  ACCESS_DS_SOURCE_W           = WideString('DS');
  {$EXTERNALSYM ACCESS_DS_SOURCE_W}
  ACCESS_DS_OBJECT_TYPE_NAME_A = 'Directory Service Object';
  {$EXTERNALSYM ACCESS_DS_OBJECT_TYPE_NAME_A}
  ACCESS_DS_OBJECT_TYPE_NAME_W = WideString('Directory Service Object');
  {$EXTERNALSYM ACCESS_DS_OBJECT_TYPE_NAME_W}

////////////////////////////////////////////////////////////////////////
//                                                                    //
//               Privilege Related Data Structures                    //
//                                                                    //
////////////////////////////////////////////////////////////////////////

//
// Privilege attributes
//

const
  SE_PRIVILEGE_ENABLED_BY_DEFAULT = $00000001;
  {$EXTERNALSYM SE_PRIVILEGE_ENABLED_BY_DEFAULT}
  SE_PRIVILEGE_ENABLED            = $00000002;
  {$EXTERNALSYM SE_PRIVILEGE_ENABLED}
  SE_PRIVILEGE_REMOVED            = $00000004;
  {$EXTERNALSYM SE_PRIVILEGE_REMOVED}
  SE_PRIVILEGE_USED_FOR_ACCESS    = DWORD($80000000);
  {$EXTERNALSYM SE_PRIVILEGE_USED_FOR_ACCESS}

  SE_PRIVILEGE_VALID_ATTRIBUTES       = (SE_PRIVILEGE_ENABLED_BY_DEFAULT or
    SE_PRIVILEGE_ENABLED or SE_PRIVILEGE_REMOVED or
    SE_PRIVILEGE_USED_FOR_ACCESS);
  {$EXTERNALSYM SE_PRIVILEGE_VALID_ATTRIBUTES}


//
// Privilege Set Control flags
//

  PRIVILEGE_SET_ALL_NECESSARY = 1;
  {$EXTERNALSYM PRIVILEGE_SET_ALL_NECESSARY}

//
//  Privilege Set - This is defined for a privilege set of one.
//                  If more than one privilege is needed, then this structure
//                  will need to be allocated with more space.
//
//  Note: don't change this structure without fixing the INITIAL_PRIVILEGE_SET
//  structure (defined in se.h)
//

type
  PPRIVILEGE_SET = ^PRIVILEGE_SET;
  {$EXTERNALSYM PPRIVILEGE_SET}
  _PRIVILEGE_SET = record
    PrivilegeCount: DWORD;
    Control: DWORD;
    Privilege: array [0..ANYSIZE_ARRAY - 1] of LUID_AND_ATTRIBUTES;
    //Privilege: LUID_AND_ATTRIBUTES;
  end;
  {$EXTERNALSYM _PRIVILEGE_SET}
  PRIVILEGE_SET = _PRIVILEGE_SET;
  {$EXTERNALSYM PRIVILEGE_SET}
  TPrivilegeSet = PRIVILEGE_SET;
  PPrivilegeSet = PPRIVILEGE_SET;

////////////////////////////////////////////////////////////////////////
//                                                                    //
//               NT Defined Privileges                                //
//                                                                    //
////////////////////////////////////////////////////////////////////////

const
  SE_CREATE_TOKEN_NAME        = 'SeCreateTokenPrivilege';
  {$EXTERNALSYM SE_CREATE_TOKEN_NAME}
  SE_ASSIGNPRIMARYTOKEN_NAME  = 'SeAssignPrimaryTokenPrivilege';
  {$EXTERNALSYM SE_ASSIGNPRIMARYTOKEN_NAME}
  SE_LOCK_MEMORY_NAME         = 'SeLockMemoryPrivilege';
  {$EXTERNALSYM SE_LOCK_MEMORY_NAME}
  SE_INCREASE_QUOTA_NAME      = 'SeIncreaseQuotaPrivilege';
  {$EXTERNALSYM SE_INCREASE_QUOTA_NAME}
  SE_UNSOLICITED_INPUT_NAME   = 'SeUnsolicitedInputPrivilege';
  {$EXTERNALSYM SE_UNSOLICITED_INPUT_NAME}
  SE_MACHINE_ACCOUNT_NAME     = 'SeMachineAccountPrivilege';
  {$EXTERNALSYM SE_MACHINE_ACCOUNT_NAME}
  SE_TCB_NAME                 = 'SeTcbPrivilege';
  {$EXTERNALSYM SE_TCB_NAME}
  SE_SECURITY_NAME            = 'SeSecurityPrivilege';
  {$EXTERNALSYM SE_SECURITY_NAME}
  SE_TAKE_OWNERSHIP_NAME      = 'SeTakeOwnershipPrivilege';
  {$EXTERNALSYM SE_TAKE_OWNERSHIP_NAME}
  SE_LOAD_DRIVER_NAME         = 'SeLoadDriverPrivilege';
  {$EXTERNALSYM SE_LOAD_DRIVER_NAME}
  SE_SYSTEM_PROFILE_NAME      = 'SeSystemProfilePrivilege';
  {$EXTERNALSYM SE_SYSTEM_PROFILE_NAME}
  SE_SYSTEMTIME_NAME          = 'SeSystemtimePrivilege';
  {$EXTERNALSYM SE_SYSTEMTIME_NAME}
  SE_PROF_SINGLE_PROCESS_NAME = 'SeProfileSingleProcessPrivilege';
  {$EXTERNALSYM SE_PROF_SINGLE_PROCESS_NAME}
  SE_INC_BASE_PRIORITY_NAME   = 'SeIncreaseBasePriorityPrivilege';
  {$EXTERNALSYM SE_INC_BASE_PRIORITY_NAME}
  SE_CREATE_PAGEFILE_NAME     = 'SeCreatePagefilePrivilege';
  {$EXTERNALSYM SE_CREATE_PAGEFILE_NAME}
  SE_CREATE_PERMANENT_NAME    = 'SeCreatePermanentPrivilege';
  {$EXTERNALSYM SE_CREATE_PERMANENT_NAME}
  SE_BACKUP_NAME              = 'SeBackupPrivilege';
  {$EXTERNALSYM SE_BACKUP_NAME}
  SE_RESTORE_NAME             = 'SeRestorePrivilege';
  {$EXTERNALSYM SE_RESTORE_NAME}
  SE_SHUTDOWN_NAME            = 'SeShutdownPrivilege';
  {$EXTERNALSYM SE_SHUTDOWN_NAME}
  SE_DEBUG_NAME               = 'SeDebugPrivilege';
  {$EXTERNALSYM SE_DEBUG_NAME}
  SE_AUDIT_NAME               = 'SeAuditPrivilege';
  {$EXTERNALSYM SE_AUDIT_NAME}
  SE_SYSTEM_ENVIRONMENT_NAME  = 'SeSystemEnvironmentPrivilege';
  {$EXTERNALSYM SE_SYSTEM_ENVIRONMENT_NAME}
  SE_CHANGE_NOTIFY_NAME       = 'SeChangeNotifyPrivilege';
  {$EXTERNALSYM SE_CHANGE_NOTIFY_NAME}
  SE_REMOTE_SHUTDOWN_NAME     = 'SeRemoteShutdownPrivilege';
  {$EXTERNALSYM SE_REMOTE_SHUTDOWN_NAME}
  SE_UNDOCK_NAME              = 'SeUndockPrivilege';
  {$EXTERNALSYM SE_UNDOCK_NAME}
  SE_SYNC_AGENT_NAME          = 'SeSyncAgentPrivilege';
  {$EXTERNALSYM SE_SYNC_AGENT_NAME}
  SE_ENABLE_DELEGATION_NAME   = 'SeEnableDelegationPrivilege';
  {$EXTERNALSYM SE_ENABLE_DELEGATION_NAME}
  SE_MANAGE_VOLUME_NAME       = 'SeManageVolumePrivilege';
  {$EXTERNALSYM SE_MANAGE_VOLUME_NAME}
  SE_IMPERSONATE_NAME         = 'SeImpersonatePrivilege';
  {$EXTERNALSYM SE_IMPERSONATE_NAME}
  SE_CREATE_GLOBAL_NAME       = 'SeCreateGlobalPrivilege';
  {$EXTERNALSYM SE_CREATE_GLOBAL_NAME}
  SE_TRUSTED_CREDMAN_ACCESS_NAME      = 'SeTrustedCredManAccessPrivilege';
  {$EXTERNALSYM SE_TRUSTED_CREDMAN_ACCESS_NAME}
  //Required to modify the mandatory integrity level of an object.
  SE_RELABEL_NAME                     = 'SeRelabelPrivilege';
  {$EXTERNALSYM SE_RELABEL_NAME}
  SE_INC_WORKING_SET_NAME             = 'SeIncreaseWorkingSetPrivilege';
  {$EXTERNALSYM SE_INC_WORKING_SET_NAME}
  SE_TIME_ZONE_NAME                   = 'SeTimeZonePrivilege';
  {$EXTERNALSYM SE_TIME_ZONE_NAME}
  SE_CREATE_SYMBOLIC_LINK_NAME        = 'SeCreateSymbolicLinkPrivilege';
  {$EXTERNALSYM SE_CREATE_SYMBOLIC_LINK_NAME}

////////////////////////////////////////////////////////////////////
//                                                                //
//           Security Quality Of Service                          //
//                                                                //
//                                                                //
////////////////////////////////////////////////////////////////////

//
// Impersonation Level
//
// Impersonation level is represented by a pair of bits in Windows.
// If a new impersonation level is added or lowest value is changed from
// 0 to something else, fix the Windows CreateFile call.
//

type
  _SECURITY_IMPERSONATION_LEVEL = (SecurityAnonymous, SecurityIdentification,
    SecurityImpersonation, SecurityDelegation);
  {$EXTERNALSYM _SECURITY_IMPERSONATION_LEVEL}
  SECURITY_IMPERSONATION_LEVEL = _SECURITY_IMPERSONATION_LEVEL;
  {$EXTERNALSYM SECURITY_IMPERSONATION_LEVEL}
  PSECURITY_IMPERSONATION_LEVEL = ^SECURITY_IMPERSONATION_LEVEL;
  {$EXTERNALSYM PSECURITY_IMPERSONATION_LEVEL}
  TSecurityImpersonationLevel = SECURITY_IMPERSONATION_LEVEL;
  PSecurityImpersonationLevel = PSECURITY_IMPERSONATION_LEVEL;

const
  SECURITY_MAX_IMPERSONATION_LEVEL = SecurityDelegation;
  {$EXTERNALSYM SECURITY_MAX_IMPERSONATION_LEVEL}
  SECURITY_MIN_IMPERSONATION_LEVEL = SecurityAnonymous;
  {$EXTERNALSYM SECURITY_MIN_IMPERSONATION_LEVEL}
  DEFAULT_IMPERSONATION_LEVEL      = SecurityImpersonation;
  {$EXTERNALSYM DEFAULT_IMPERSONATION_LEVEL}

function VALID_IMPERSONATION_LEVEL(L: TSecurityImpersonationLevel): BOOL;
{$EXTERNALSYM VALID_IMPERSONATION_LEVEL}

////////////////////////////////////////////////////////////////////
//                                                                //
//           Token Object Definitions                             //
//                                                                //
//                                                                //
////////////////////////////////////////////////////////////////////

//
// Token Specific Access Rights.
//

const
  TOKEN_ASSIGN_PRIMARY    = $0001;
  {$EXTERNALSYM TOKEN_ASSIGN_PRIMARY}
  TOKEN_DUPLICATE         = $0002;
  {$EXTERNALSYM TOKEN_DUPLICATE}
  TOKEN_IMPERSONATE       = $0004;
  {$EXTERNALSYM TOKEN_IMPERSONATE}
  TOKEN_QUERY             = $0008;
  {$EXTERNALSYM TOKEN_QUERY}
  TOKEN_QUERY_SOURCE      = $0010;
  {$EXTERNALSYM TOKEN_QUERY_SOURCE}
  TOKEN_ADJUST_PRIVILEGES = $0020;
  {$EXTERNALSYM TOKEN_ADJUST_PRIVILEGES}
  TOKEN_ADJUST_GROUPS     = $0040;
  {$EXTERNALSYM TOKEN_ADJUST_GROUPS}
  TOKEN_ADJUST_DEFAULT    = $0080;
  {$EXTERNALSYM TOKEN_ADJUST_DEFAULT}
  TOKEN_ADJUST_SESSIONID  = $0100;
  {$EXTERNALSYM TOKEN_ADJUST_SESSIONID}

  TOKEN_ALL_ACCESS_P = STANDARD_RIGHTS_REQUIRED or TOKEN_ASSIGN_PRIMARY or
    TOKEN_DUPLICATE or TOKEN_IMPERSONATE or TOKEN_QUERY or TOKEN_QUERY_SOURCE or
    TOKEN_ADJUST_PRIVILEGES or TOKEN_ADJUST_GROUPS or TOKEN_ADJUST_DEFAULT;
  {$EXTERNALSYM TOKEN_ALL_ACCESS_P}

  TOKEN_ALL_ACCESS = TOKEN_ALL_ACCESS_P or TOKEN_ADJUST_SESSIONID;
  {$EXTERNALSYM TOKEN_ALL_ACCESS}

  TOKEN_READ = STANDARD_RIGHTS_READ or TOKEN_QUERY;
  {$EXTERNALSYM TOKEN_READ}

  TOKEN_WRITE = (STANDARD_RIGHTS_WRITE or TOKEN_ADJUST_PRIVILEGES or
    TOKEN_ADJUST_GROUPS or TOKEN_ADJUST_DEFAULT);
  {$EXTERNALSYM TOKEN_WRITE}

  TOKEN_EXECUTE = STANDARD_RIGHTS_EXECUTE;
  {$EXTERNALSYM TOKEN_EXECUTE}

//
// Token Types
//

type
  _TOKEN_TYPE = (TokenTypePad0, TokenPrimary, TokenImpersonation);
  {$EXTERNALSYM _TOKEN_TYPE}
  TOKEN_TYPE = _TOKEN_TYPE;
  {$EXTERNALSYM TOKEN_TYPE}
  PTOKEN_TYPE = ^TOKEN_TYPE;
  {$EXTERNALSYM PTOKEN_TYPE}

  TTokenType = TOKEN_TYPE;
  PTokenType = PTOKEN_TYPE;

//
// Token Information Classes.
//

type
//TODO: MERGE
  _TOKEN_INFORMATION_CLASS =
{$IFDEF WINVISTA_UP}
    (TokenPadding0,
    TokenUser,
    TokenGroups,
    TokenPrivileges,
    TokenOwner,
    TokenPrimaryGroup,
    TokenDefaultDacl,
    TokenSource,
    TokenType,
    TokenImpersonationLevel,
    TokenStatistics,
    TokenRestrictedSids,
    TokenSessionId, //12
    TokenGroupsAndPrivileges,
    TokenSessionReference,
    TokenSandBoxInert,
    TokenAuditPolicy,
    TokenOrigin,
    TokenElevationType,
    TokenLinkedToken,
    TokenElevation,
    TokenHasRestrictions,
    TokenAccessInformation,
    TokenVirtualizationAllowed,
    TokenVirtualizationEnabled,
    TokenIntegrityLevel,
    TokenUIAccess,
    TokenMandatoryPolicy,
    TokenLogonSid,
    // MaxTokenInfoClass should always be the last enum
    MaxTokenInfoClass);
{$ELSE}
    (TokenInfoClassPad0, TokenUser, TokenGroups,
    TokenPrivileges, TokenOwner, TokenPrimaryGroup, TokenDefaultDacl, TokenSource,
    TokenType, TokenImpersonationLevel, TokenStatistics, TokenRestrictedSids,
    TokenSessionId, TokenGroupsAndPrivileges, TokenSessionReference,
    TokenSandBoxInert, TokenAuditPolicy, TokenOrigin,
    MaxTokenInfoClass); {MaxTokenInfoClass should always be the last enum}
{$ENDIF WINVISTA_UP}


  {$EXTERNALSYM _TOKEN_INFORMATION_CLASS}
  TOKEN_INFORMATION_CLASS = _TOKEN_INFORMATION_CLASS;
  {$EXTERNALSYM TOKEN_INFORMATION_CLASS}
  PTOKEN_INFORMATION_CLASS = ^TOKEN_INFORMATION_CLASS;
  {$EXTERNALSYM PTOKEN_INFORMATION_CLASS}

  TTokenInformationClass = TOKEN_INFORMATION_CLASS;
  PTokenInformationClass = PTOKEN_INFORMATION_CLASS;

//
// Token information class structures
//

type
  PTOKEN_USER = ^TOKEN_USER;
  {$EXTERNALSYM PTOKEN_USER}
  _TOKEN_USER = record
    User: SID_AND_ATTRIBUTES;
  end;
  {$EXTERNALSYM _TOKEN_USER}
  TOKEN_USER = _TOKEN_USER;
  {$EXTERNALSYM TOKEN_USER}
  TTokenUser = TOKEN_USER;
  PTokenUser = PTOKEN_USER;

  PTOKEN_GROUPS = ^TOKEN_GROUPS;
  {$EXTERNALSYM PTOKEN_GROUPS}
  _TOKEN_GROUPS = record
    GroupCount: DWORD;
    Groups: array [0..ANYSIZE_ARRAY - 1] of SID_AND_ATTRIBUTES;
  end;
  {$EXTERNALSYM _TOKEN_GROUPS}
  TOKEN_GROUPS = _TOKEN_GROUPS;
  {$EXTERNALSYM TOKEN_GROUPS}
  TTokenGroups = TOKEN_GROUPS;
  PTokenGroups = PTOKEN_GROUPS;

  PTOKEN_PRIVILEGES = ^TOKEN_PRIVILEGES;
  {$EXTERNALSYM PTOKEN_PRIVILEGES}
  _TOKEN_PRIVILEGES = record
    PrivilegeCount: DWORD;
    Privileges: array [0..ANYSIZE_ARRAY - 1] of LUID_AND_ATTRIBUTES;
  end;
  {$EXTERNALSYM _TOKEN_PRIVILEGES}
  TOKEN_PRIVILEGES = _TOKEN_PRIVILEGES;
  {$EXTERNALSYM TOKEN_PRIVILEGES}
  TTokenPrivileges = TOKEN_PRIVILEGES;
  PTokenPrivileges = PTOKEN_PRIVILEGES;

  PTOKEN_OWNER = ^TOKEN_OWNER;
  {$EXTERNALSYM PTOKEN_OWNER}
  _TOKEN_OWNER = record
    Owner: PSID;
  end;
  {$EXTERNALSYM _TOKEN_OWNER}
  TOKEN_OWNER = _TOKEN_OWNER;
  {$EXTERNALSYM TOKEN_OWNER}
  TTokenOwner = TOKEN_OWNER;
  PTokenOwner = PTOKEN_OWNER;

  PTOKEN_PRIMARY_GROUP = ^TOKEN_PRIMARY_GROUP;
  {$EXTERNALSYM PTOKEN_PRIMARY_GROUP}
  _TOKEN_PRIMARY_GROUP = record
    PrimaryGroup: PSID;
  end;
  {$EXTERNALSYM _TOKEN_PRIMARY_GROUP}
  TOKEN_PRIMARY_GROUP = _TOKEN_PRIMARY_GROUP;
  {$EXTERNALSYM TOKEN_PRIMARY_GROUP}
  TTokenPrimaryGroup = TOKEN_PRIMARY_GROUP;
  PTokenPrimaryGroup = PTOKEN_PRIMARY_GROUP;

  PTOKEN_DEFAULT_DACL = ^TOKEN_DEFAULT_DACL;
  {$EXTERNALSYM PTOKEN_DEFAULT_DACL}
  _TOKEN_DEFAULT_DACL = record
    DefaultDacl: PACL;
  end;
  {$EXTERNALSYM _TOKEN_DEFAULT_DACL}
  TOKEN_DEFAULT_DACL = _TOKEN_DEFAULT_DACL;
  {$EXTERNALSYM TOKEN_DEFAULT_DACL}
  TTokenDefaultDacl = TOKEN_DEFAULT_DACL;
  PTokenDefaultDacl = PTOKEN_DEFAULT_DACL;

  _TOKEN_GROUPS_AND_PRIVILEGES = record
    SidCount: DWORD;
    SidLength: DWORD;
    Sids: PSID_AND_ATTRIBUTES;
    RestrictedSidCount: DWORD;
    RestrictedSidLength: DWORD;
    RestrictedSids: PSID_AND_ATTRIBUTES;
    PrivilegeCount: DWORD;
    PrivilegeLength: DWORD;
    Privileges: PLUID_AND_ATTRIBUTES;
    AuthenticationId: LUID;
  end;
  {$EXTERNALSYM _TOKEN_GROUPS_AND_PRIVILEGES}
  TOKEN_GROUPS_AND_PRIVILEGES = _TOKEN_GROUPS_AND_PRIVILEGES;
  {$EXTERNALSYM TOKEN_GROUPS_AND_PRIVILEGES}
  PTOKEN_GROUPS_AND_PRIVILEGES = ^TOKEN_GROUPS_AND_PRIVILEGES;
  {$EXTERNALSYM PTOKEN_GROUPS_AND_PRIVILEGES}
  TTokenGroupsAndPrivileges = TOKEN_GROUPS_AND_PRIVILEGES;
  PTokenGroupsAndPrivileges = PTOKEN_GROUPS_AND_PRIVILEGES;

//
// Valid bits for each TOKEN_AUDIT_POLICY policy mask field.
//

const
  TOKEN_AUDIT_SUCCESS_INCLUDE = $1;
  {$EXTERNALSYM TOKEN_AUDIT_SUCCESS_INCLUDE}
  TOKEN_AUDIT_SUCCESS_EXCLUDE = $2;
  {$EXTERNALSYM TOKEN_AUDIT_SUCCESS_EXCLUDE}
  TOKEN_AUDIT_FAILURE_INCLUDE = $4;
  {$EXTERNALSYM TOKEN_AUDIT_FAILURE_INCLUDE}
  TOKEN_AUDIT_FAILURE_EXCLUDE = $8;
  {$EXTERNALSYM TOKEN_AUDIT_FAILURE_EXCLUDE}

  VALID_AUDIT_POLICY_BITS = (TOKEN_AUDIT_SUCCESS_INCLUDE or
                             TOKEN_AUDIT_SUCCESS_EXCLUDE or
                             TOKEN_AUDIT_FAILURE_INCLUDE or
                             TOKEN_AUDIT_FAILURE_EXCLUDE);
  {$EXTERNALSYM VALID_AUDIT_POLICY_BITS}

type
  _TOKEN_AUDIT_POLICY_ELEMENT = record
    Category: DWORD;
    PolicyMask: DWORD;
  end;
  {$EXTERNALSYM _TOKEN_AUDIT_POLICY_ELEMENT}
  TOKEN_AUDIT_POLICY_ELEMENT = _TOKEN_AUDIT_POLICY_ELEMENT;
  {$EXTERNALSYM TOKEN_AUDIT_POLICY_ELEMENT}
  PTOKEN_AUDIT_POLICY_ELEMENT = ^TOKEN_AUDIT_POLICY_ELEMENT;
  {$EXTERNALSYM PTOKEN_AUDIT_POLICY_ELEMENT}
  TTokenAuditPolicyElement = TOKEN_AUDIT_POLICY_ELEMENT;
  PTokenAuditPolicyElement = PTOKEN_AUDIT_POLICY_ELEMENT;

// TODO Implementation references AuditEventMaxType, which isn't defined anywhere
//function VALID_TOKEN_AUDIT_POLICY_ELEMENT(P: TOKEN_AUDIT_POLICY_ELEMENT): BOOL;
//{$EXTERNALSYM VALID_TOKEN_AUDIT_POLICY_ELEMENT}

//
// Valid bits for each TOKEN_AUDIT_POLICY policy mask field.
//

const
  POLICY_AUDIT_SUBCATEGORY_COUNT = 53;
  {$EXTERNALSYM POLICY_AUDIT_SUBCATEGORY_COUNT}
  
type
  _TOKEN_AUDIT_POLICY = record
    PolicyCount: DWORD;
    Policy: array [0..ANYSIZE_ARRAY - 1] of TOKEN_AUDIT_POLICY_ELEMENT;
// PerUserPolicy: array[1..(POLICY_AUDIT_SUBCATEGORY_COUNT shr 1) + 1] of BYTE;
  end;
  {$EXTERNALSYM _TOKEN_AUDIT_POLICY}
  TOKEN_AUDIT_POLICY = _TOKEN_AUDIT_POLICY;
  {$EXTERNALSYM TOKEN_AUDIT_POLICY}
  PTOKEN_AUDIT_POLICY = ^TOKEN_AUDIT_POLICY;
  {$EXTERNALSYM PTOKEN_AUDIT_POLICY}
  TTokenAuditPolicy = TOKEN_AUDIT_POLICY;
  PTokenAuditPolicy = PTOKEN_AUDIT_POLICY;

function PER_USER_AUDITING_POLICY_SIZE(p: PTOKEN_AUDIT_POLICY): DWORD;
{$EXTERNALSYM PER_USER_AUDITING_POLICY_SIZE}

function PER_USER_AUDITING_POLICY_SIZE_BY_COUNT(C: DWORD): DWORD;
{$EXTERNALSYM PER_USER_AUDITING_POLICY_SIZE_BY_COUNT}

const
  TOKEN_SOURCE_LENGTH = 8;
  {$EXTERNALSYM TOKEN_SOURCE_LENGTH}

type
  PTOKEN_SOURCE = ^TOKEN_SOURCE;
  {$EXTERNALSYM PTOKEN_SOURCE}
  _TOKEN_SOURCE = record
    SourceName: array [0..TOKEN_SOURCE_LENGTH - 1] of AnsiChar;
    SourceIdentifier: LUID;
  end;
  {$EXTERNALSYM _TOKEN_SOURCE}
  TOKEN_SOURCE = _TOKEN_SOURCE;
  {$EXTERNALSYM TOKEN_SOURCE}
  TTokenSource = TOKEN_SOURCE;
  PTokenSource = PTOKEN_SOURCE;

  PTOKEN_STATISTICS = ^TOKEN_STATISTICS;
  {$EXTERNALSYM PTOKEN_STATISTICS}
  _TOKEN_STATISTICS = record
    TokenId: LUID;
    AuthenticationId: LUID;
    ExpirationTime: LARGE_INTEGER;
    TokenType: TOKEN_TYPE;
    ImpersonationLevel: SECURITY_IMPERSONATION_LEVEL;
    DynamicCharged: DWORD;
    DynamicAvailable: DWORD;
    GroupCount: DWORD;
    PrivilegeCount: DWORD;
    ModifiedId: LUID;
  end;
  {$EXTERNALSYM _TOKEN_STATISTICS}
  TOKEN_STATISTICS = _TOKEN_STATISTICS;
  {$EXTERNALSYM TOKEN_STATISTICS}
  TTokenStatistics = TOKEN_STATISTICS;
  PTokenStatistics = PTOKEN_STATISTICS;

  PTOKEN_CONTROL = ^TOKEN_CONTROL;
  {$EXTERNALSYM PTOKEN_CONTROL}
  _TOKEN_CONTROL = record
    TokenId: LUID;
    AuthenticationId: LUID;
    ModifiedId: LUID;
    TokenSource: TOKEN_SOURCE;
  end;
  {$EXTERNALSYM _TOKEN_CONTROL}
  TOKEN_CONTROL = _TOKEN_CONTROL;
  {$EXTERNALSYM TOKEN_CONTROL}
  TTokenControl = TOKEN_CONTROL;
  PTokenControl = PTOKEN_CONTROL;

  _TOKEN_ORIGIN = record
    OriginatingLogonSession: LUID;
  end;
  {$EXTERNALSYM _TOKEN_ORIGIN}
  TOKEN_ORIGIN = _TOKEN_ORIGIN;
  {$EXTERNALSYM TOKEN_ORIGIN}
  PTOKEN_ORIGIN = ^TOKEN_ORIGIN;
  {$EXTERNALSYM PTOKEN_ORIGIN}
  TTokenOrigin = TOKEN_ORIGIN;
  PTokenOrigin = PTOKEN_ORIGIN;

//
// Security Tracking Mode
//

const
  SECURITY_DYNAMIC_TRACKING = True;
  {$EXTERNALSYM SECURITY_DYNAMIC_TRACKING}
  SECURITY_STATIC_TRACKING  = False;
  {$EXTERNALSYM SECURITY_STATIC_TRACKING}

type
  SECURITY_CONTEXT_TRACKING_MODE = ByteBool;
  {$EXTERNALSYM SECURITY_CONTEXT_TRACKING_MODE}
  PSECURITY_CONTEXT_TRACKING_MODE = ^SECURITY_CONTEXT_TRACKING_MODE;
  {$EXTERNALSYM PSECURITY_CONTEXT_TRACKING_MODE}

//
// Quality Of Service
//

  PSECURITY_QUALITY_OF_SERVICE = ^SECURITY_QUALITY_OF_SERVICE;
  {$EXTERNALSYM PSECURITY_QUALITY_OF_SERVICE}
  _SECURITY_QUALITY_OF_SERVICE = record
    Length: DWORD;
    ImpersonationLevel: SECURITY_IMPERSONATION_LEVEL;
    ContextTrackingMode: SECURITY_CONTEXT_TRACKING_MODE;
    EffectiveOnly: ByteBool;
  end;
  {$EXTERNALSYM _SECURITY_QUALITY_OF_SERVICE}
  SECURITY_QUALITY_OF_SERVICE = _SECURITY_QUALITY_OF_SERVICE;
  {$EXTERNALSYM SECURITY_QUALITY_OF_SERVICE}
  TSecurityQualityOfService = SECURITY_QUALITY_OF_SERVICE;
  PSecurityQualityOfService = PSECURITY_QUALITY_OF_SERVICE;

//
// Used to represent information related to a thread impersonation
//

  PSE_IMPERSONATION_STATE = ^SE_IMPERSONATION_STATE;
  {$EXTERNALSYM PSE_IMPERSONATION_STATE}
  _SE_IMPERSONATION_STATE = record
    Token: PACCESS_TOKEN;
    CopyOnOpen: ByteBool;
    EffectiveOnly: ByteBool;
    Level: SECURITY_IMPERSONATION_LEVEL;
  end;
  {$EXTERNALSYM _SE_IMPERSONATION_STATE}
  SE_IMPERSONATION_STATE = _SE_IMPERSONATION_STATE;
  {$EXTERNALSYM SE_IMPERSONATION_STATE}
  TSeImpersonationState = SE_IMPERSONATION_STATE;
  PSeImpersonationState = PSE_IMPERSONATION_STATE;

const
  DISABLE_MAX_PRIVILEGE = $1;
  {$EXTERNALSYM DISABLE_MAX_PRIVILEGE}
  SANDBOX_INERT         = $2;
  {$EXTERNALSYM SANDBOX_INERT}

type
  SECURITY_INFORMATION = DWORD;
  {$EXTERNALSYM SECURITY_INFORMATION}
  PSECURITY_INFORMATION = ^SECURITY_INFORMATION;
  {$EXTERNALSYM PSECURITY_INFORMATION}
  TSecurityInformation = SECURITY_INFORMATION;
  PSecurityInformation = PSECURITY_INFORMATION;

const
  OWNER_SECURITY_INFORMATION = $00000001;
  {$EXTERNALSYM OWNER_SECURITY_INFORMATION}
  GROUP_SECURITY_INFORMATION = $00000002;
  {$EXTERNALSYM GROUP_SECURITY_INFORMATION}
  DACL_SECURITY_INFORMATION  = $00000004;
  {$EXTERNALSYM DACL_SECURITY_INFORMATION}
  SACL_SECURITY_INFORMATION  = $00000008;
  {$EXTERNALSYM SACL_SECURITY_INFORMATION}
  {It includes the integrity ACE into the security descriptor string.
   See http://msdn2.microsoft.com/en-us/library/aa376397.aspx
   }
  LABEL_SECURITY_INFORMATION = $0000010;
  {$EXTERNALSYM LABEL_SECURITY_INFORMATION}

  PROTECTED_DACL_SECURITY_INFORMATION   = $80000000;
  {$EXTERNALSYM PROTECTED_DACL_SECURITY_INFORMATION}
  PROTECTED_SACL_SECURITY_INFORMATION   = $40000000;
  {$EXTERNALSYM PROTECTED_SACL_SECURITY_INFORMATION}
  UNPROTECTED_DACL_SECURITY_INFORMATION = $20000000;
  {$EXTERNALSYM UNPROTECTED_DACL_SECURITY_INFORMATION}
  UNPROTECTED_SACL_SECURITY_INFORMATION = $10000000;
  {$EXTERNALSYM UNPROTECTED_SACL_SECURITY_INFORMATION}

  PROCESS_TERMINATE         = $0001;
  {$EXTERNALSYM PROCESS_TERMINATE}
  PROCESS_CREATE_THREAD     = $0002;
  {$EXTERNALSYM PROCESS_CREATE_THREAD}
  PROCESS_SET_SESSIONID     = $0004;
  {$EXTERNALSYM PROCESS_SET_SESSIONID}
  PROCESS_VM_OPERATION      = $0008;
  {$EXTERNALSYM PROCESS_VM_OPERATION}
  PROCESS_VM_READ           = $0010;
  {$EXTERNALSYM PROCESS_VM_READ}
  PROCESS_VM_WRITE          = $0020;
  {$EXTERNALSYM PROCESS_VM_WRITE}
  PROCESS_DUP_HANDLE        = $0040;
  {$EXTERNALSYM PROCESS_DUP_HANDLE}
  PROCESS_CREATE_PROCESS    = $0080;
  {$EXTERNALSYM PROCESS_CREATE_PROCESS}
  PROCESS_SET_QUOTA         = $0100;
  {$EXTERNALSYM PROCESS_SET_QUOTA}
  PROCESS_SET_INFORMATION   = $0200;
  {$EXTERNALSYM PROCESS_SET_INFORMATION}
  PROCESS_QUERY_INFORMATION = $0400;
  {$EXTERNALSYM PROCESS_QUERY_INFORMATION}
  PROCESS_SUSPEND_RESUME    = $0800;
  {$EXTERNALSYM PROCESS_SUSPEND_RESUME}
  PROCESS_QUERY_LIMITED_INFORMATION = $1000;
  {$EXTERNALSYM PROCESS_QUERY_LIMITED_INFORMATION}


  PROCESS_ALL_ACCESS        = STANDARD_RIGHTS_REQUIRED or SYNCHRONIZE or $FFF;
  {$EXTERNALSYM PROCESS_ALL_ACCESS}
{$IFDEF WINVISTA_UP}
  //Since Windows Vista (6.0) the all access has been changed.
  //If you implement solely for Vista and newer you can use THREAD_ALL_ACCESS6
  //Otherwise you should not use XXX_ALL_ACCESS at all and instead
  //use the specific access rights necessary.
  PROCESS_ALL_ACCESS6  = STANDARD_RIGHTS_REQUIRED or SYNCHRONIZE or $FFFF;
{$ENDIF WINVISTA_UP}


{$IFDEF WIN64}
  MAXIMUM_PROC_PER_GROUP  = 64;
  {$EXTERNALSYM MAXIMUM_PROC_PER_GROUP}
{$ELSE}
  MAXIMUM_PROC_PER_GROUP  = 32;
  {$EXTERNALSYM MAXIMUM_PROC_PER_GROUP}
{$ENDIF WIN64}

  MAXIMUM_PROCESSORS    = MAXIMUM_PROC_PER_GROUP;
  {$EXTERNALSYM MAXIMUM_PROCESSORS}

  THREAD_TERMINATE            = $0001;
  {$EXTERNALSYM THREAD_TERMINATE}
  THREAD_SUSPEND_RESUME       = $0002;
  {$EXTERNALSYM THREAD_SUSPEND_RESUME}
  THREAD_GET_CONTEXT          = $0008;
  {$EXTERNALSYM THREAD_GET_CONTEXT}
  THREAD_SET_CONTEXT          = $0010;
  {$EXTERNALSYM THREAD_SET_CONTEXT}
  THREAD_SET_INFORMATION      = $0020;
  {$EXTERNALSYM THREAD_SET_INFORMATION}
  THREAD_QUERY_INFORMATION    = $0040;
  {$EXTERNALSYM THREAD_QUERY_INFORMATION}
  THREAD_SET_THREAD_TOKEN     = $0080;
  {$EXTERNALSYM THREAD_SET_THREAD_TOKEN}
  THREAD_IMPERSONATE          = $0100;
  {$EXTERNALSYM THREAD_IMPERSONATE}
  THREAD_DIRECT_IMPERSONATION = $0200;
  {$EXTERNALSYM THREAD_DIRECT_IMPERSONATION}
  THREAD_SET_LIMITED_INFORMATION   = $0400;
  {$EXTERNALSYM THREAD_SET_LIMITED_INFORMATION}
  THREAD_QUERY_LIMITED_INFORMATION = $0800;
  {$EXTERNALSYM THREAD_QUERY_LIMITED_INFORMATION}

  THREAD_ALL_ACCESS = STANDARD_RIGHTS_REQUIRED or SYNCHRONIZE or $3FF;
  {$EXTERNALSYM THREAD_ALL_ACCESS}
{$IFDEF WINVISTA_UP}
  //Since Windows Vista (6.0) the all access has been changed.
  //If you implement solely for Vista and newer you can use THREAD_ALL_ACCESS6
  //Otherwise you should not use XXX_ALL_ACCESS at all and instead
  //use the specific access rights necessary.
  THREAD_ALL_ACCESS6  = STANDARD_RIGHTS_REQUIRED or SYNCHRONIZE or $FFFF;
{$ENDIF WINVISTA_UP}

  JOB_OBJECT_ASSIGN_PROCESS          = $0001;
  {$EXTERNALSYM JOB_OBJECT_ASSIGN_PROCESS}
  JOB_OBJECT_SET_ATTRIBUTES          = $0002;
  {$EXTERNALSYM JOB_OBJECT_SET_ATTRIBUTES}
  JOB_OBJECT_QUERY                   = $0004;
  {$EXTERNALSYM JOB_OBJECT_QUERY}
  JOB_OBJECT_TERMINATE               = $0008;
  {$EXTERNALSYM JOB_OBJECT_TERMINATE}
  JOB_OBJECT_SET_SECURITY_ATTRIBUTES = $0010;
  {$EXTERNALSYM JOB_OBJECT_SET_SECURITY_ATTRIBUTES}
  JOB_OBJECT_ALL_ACCESS              = STANDARD_RIGHTS_REQUIRED or SYNCHRONIZE or $1F ;
  {$EXTERNALSYM JOB_OBJECT_ALL_ACCESS}

type
  _JOB_SET_ARRAY = record
    JobHandle: HANDLE;   // Handle to job object to insert
    MemberLevel: DWORD;  // Level of this job in the set. Must be > 0. Can be sparse.
    Flags: DWORD;        // Unused. Must be zero
  end;
  {$EXTERNALSYM _JOB_SET_ARRAY}
  JOB_SET_ARRAY = _JOB_SET_ARRAY;
  {$EXTERNALSYM JOB_SET_ARRAY}
  PJOB_SET_ARRAY = ^JOB_SET_ARRAY;
  {$EXTERNALSYM PJOB_SET_ARRAY}
  TJobSetArray = JOB_SET_ARRAY;
  PJobSetArray = PJOB_SET_ARRAY;

const
  FLS_MAXIMUM_AVAILABLE = 128;
  {$EXTERNALSYM FLS_MAXIMUM_AVAILABLE}
  TLS_MINIMUM_AVAILABLE = 64;
  {$EXTERNALSYM TLS_MINIMUM_AVAILABLE}

type
  PEXCEPTION_REGISTRATION_RECORD = ^EXCEPTION_REGISTRATION_RECORD;
  _EXCEPTION_REGISTRATION_RECORD = packed record
    pNext: PEXCEPTION_REGISTRATION_RECORD;
    pfnHandler: FARPROC;
  end;
  EXCEPTION_REGISTRATION_RECORD = _EXCEPTION_REGISTRATION_RECORD;
  TExceptionRegistrationRecord = EXCEPTION_REGISTRATION_RECORD;
  PExceptionRegistrationRecord = PEXCEPTION_REGISTRATION_RECORD;

  PNT_TIB = ^NT_TIB;
  {$EXTERNALSYM PNT_TIB}
  _NT_TIB = record
    ExceptionList: PEXCEPTION_REGISTRATION_RECORD; // 00h Head of exception record list
    StackBase: PVOID;     // 04h Top of user stack
    StackLimit: PVOID;    // 08h Base of user stack

    //union                       // 0Ch (NT/Win95 differences)
    //{
    //    struct  // Win95 fields
    //    {
    //        WORD    pvTDB;         // 0Ch TDB
    //        WORD    pvThunkSS;     // 0Eh SS selector used for thunking to 16 bits
    //        DWORD   unknown1;      // 10h
    //    } WIN95;
    //
    //    struct  // WinNT fields
    //    {

    SubSystemTib: PVOID;     // 0Ch

    Union: record             // 10H
    case Integer of
      0: (FiberData: PVOID);
      1: (Version: DWORD);
    end;

    //    } WINNT;
    //} TIB_UNION1;

    ArbitraryUserPointer: PVOID;      // 14h Available for application use
    Self: PNT_TIB;          // 18h Linear address of TIB structure

    //union                       // 1Ch (NT/Win95 differences)
    //{
    //    struct  // Win95 fields
    //    {
    //        WORD    TIBFlags;           // 1Ch
    //        WORD    Win16MutexCount;    // 1Eh
    //        DWORD   DebugContext;       // 20h
    //        DWORD   pCurrentPriority;   // 24h
    //        DWORD   pvQueue;            // 28h Message Queue selector
    //    } WIN95;
    //
    //    struct  // WinNT fields
    //    {

    unknown1: DWORD;             // 1Ch
    processID: DWORD;            // 20h
    threadID: DWORD;             // 24h
    unknown2: DWORD;             // 28h

    //    } WINNT;
    //} TIB_UNION2;

    pvTLSArray: PVOID;          // (PPVOID!) 2Ch Thread Local Storage array

    //union                      // 30h (NT/Win95 differences)
    //{
    //    struct  // Win95 fields
    //    {
    //        PVOID*  pProcess;  // 30h Pointer to owning process database
    //    } WIN95;
    //} TIB_UNION3;
  end;
  {$EXTERNALSYM _NT_TIB}
  NT_TIB = _NT_TIB;
  {$EXTERNALSYM NT_TIB}
  TNtTib = NT_TIB;
  PNtTib = ^TNtTib;

//
// 32 and 64 bit specific version for wow64 and the debugger
//

  PNT_TIB32 = ^NT_TIB32;
  {$EXTERNALSYM PNT_TIB32}
  _NT_TIB32 = record
    ExceptionList: DWORD;
    StackBase: DWORD;
    StackLimit: DWORD;
    SubSystemTib: DWORD;
    Union: record
    case Integer of
      0: (FiberData: DWORD);
      1: (Version: DWORD);
    end;
    ArbitraryUserPointer: DWORD;
    Self: DWORD;
  end;
  {$EXTERNALSYM _NT_TIB32}
  NT_TIB32 = _NT_TIB32;
  {$EXTERNALSYM NT_TIB32}
  TNtTib32 = NT_TIB32;
  PNtTib32 = ^TNtTib32;

  PNT_TIB64 = ^NT_TIB64;
  {$EXTERNALSYM PNT_TIB64}
  _NT_TIB64 = record
    ExceptionList: DWORD64;
    StackBase: DWORD64;
    StackLimit: DWORD64;
    SubSystemTib: DWORD64;
    Union: record
    case Integer of
      0: (FiberData: DWORD64);
      1: (Version: DWORD);
    end;
    ArbitraryUserPointer: DWORD64;
    Self: DWORD64;
  end;
  {$EXTERNALSYM _NT_TIB64}
  NT_TIB64 = _NT_TIB64;
  {$EXTERNALSYM NT_TIB64}
  TNtTib64 = NT_TIB64;
  PNtTib64 = ^TNtTib64;

//
// Define function to return the current Thread Environment Block
//

{$IFNDEF JWA_INCLUDEMODE}
function NtCurrentTeb: PNT_TIB;
{$EXTERNALSYM NtCurrentTeb}
{$ENDIF JWA_INCLUDEMODE}

const
  THREAD_BASE_PRIORITY_LOWRT = 15;         // value that gets a thread to LowRealtime-1
  {$EXTERNALSYM THREAD_BASE_PRIORITY_LOWRT}
  THREAD_BASE_PRIORITY_MAX   = 2;          // maximum thread base priority boost
  {$EXTERNALSYM THREAD_BASE_PRIORITY_MAX}
  THREAD_BASE_PRIORITY_MIN   = DWORD(-2);  // minimum thread base priority boost
  {$EXTERNALSYM THREAD_BASE_PRIORITY_MIN}
  THREAD_BASE_PRIORITY_IDLE  = DWORD(-15); // value that gets a thread to idle
  {$EXTERNALSYM THREAD_BASE_PRIORITY_IDLE}

type
  PQUOTA_LIMITS = ^QUOTA_LIMITS;
  {$EXTERNALSYM PQUOTA_LIMITS}
  _QUOTA_LIMITS = record
    PagedPoolLimit: SIZE_T;
    NonPagedPoolLimit: SIZE_T;
    MinimumWorkingSetSize: SIZE_T;
    MaximumWorkingSetSize: SIZE_T;
    PagefileLimit: SIZE_T;
    TimeLimit: LARGE_INTEGER;
  end;
  {$EXTERNALSYM _QUOTA_LIMITS}
  QUOTA_LIMITS = _QUOTA_LIMITS;
  {$EXTERNALSYM QUOTA_LIMITS}
  TQuotaLimits = QUOTA_LIMITS;
  PQuotaLimits = PQUOTA_LIMITS;

const
  QUOTA_LIMITS_HARDWS_MIN_ENABLE  = $00000001;
  {$EXTERNALSYM QUOTA_LIMITS_HARDWS_MIN_ENABLE}
  QUOTA_LIMITS_HARDWS_MIN_DISABLE = $00000002;
  {$EXTERNALSYM QUOTA_LIMITS_HARDWS_MIN_DISABLE}
  QUOTA_LIMITS_HARDWS_MAX_ENABLE  = $00000004;
  {$EXTERNALSYM QUOTA_LIMITS_HARDWS_MAX_ENABLE}
  QUOTA_LIMITS_HARDWS_MAX_DISABLE = $00000008;
  {$EXTERNALSYM QUOTA_LIMITS_HARDWS_MAX_DISABLE}
  QUOTA_LIMITS_USE_DEFAULT_LIMITS     = $00000010;
  {$EXTERNALSYM QUOTA_LIMITS_USE_DEFAULT_LIMITS}

type
  PRateQuotaLimit = ^TRateQuotaLimit;
  {$EXTERNALSYM _RATE_QUOTA_LIMIT}
  _RATE_QUOTA_LIMIT = record
    RateData: DWORD;
(*    struct {
        DWORD RatePercent : 7;
        DWORD Reserved0   : 25;
    } DUMMYSTRUCTNAME;*)
  end;
  {$EXTERNALSYM RATE_QUOTA_LIMIT}
  RATE_QUOTA_LIMIT = _RATE_QUOTA_LIMIT;
  {$EXTERNALSYM PRATE_QUOTA_LIMIT}
  PRATE_QUOTA_LIMIT = ^_RATE_QUOTA_LIMIT;
  TRateQuotaLimit = _RATE_QUOTA_LIMIT;

  _QUOTA_LIMITS_EX = record
    PagedPoolLimit: SIZE_T;
    NonPagedPoolLimit: SIZE_T;
    MinimumWorkingSetSize: SIZE_T;
    MaximumWorkingSetSize: SIZE_T;
    PagefileLimit: SIZE_T;           // Limit expressed in pages
    TimeLimit: LARGE_INTEGER;
    WorkingSetLimit: SIZE_T;         // Limit expressed in pages
    Reserved2: SIZE_T;
    Reserved3: SIZE_T;
    Reserved4: SIZE_T;
    Flags: DWORD;
    CpuRateLimit: RATE_QUOTA_LIMIT;
  end;
  {$EXTERNALSYM _QUOTA_LIMITS_EX}
  QUOTA_LIMITS_EX = _QUOTA_LIMITS_EX;
  {$EXTERNALSYM QUOTA_LIMITS_EX}
  PQUOTA_LIMITS_EX = ^QUOTA_LIMITS_EX;
  {$EXTERNALSYM PQUOTA_LIMITS_EX}
  TQuotaLimitsEx = QUOTA_LIMITS_EX;
  PQuotaLimitsEx = PQUOTA_LIMITS_EX;

  PIO_COUNTERS = ^IO_COUNTERS;
  {$EXTERNALSYM PIO_COUNTERS}
  _IO_COUNTERS = record
    ReadOperationCount: Int64;
    WriteOperationCount: Int64;
    OtherOperationCount: Int64;
    ReadTransferCount: Int64;
    WriteTransferCount: Int64;
    OtherTransferCount: Int64;
  end;
  {$EXTERNALSYM _IO_COUNTERS}
  IO_COUNTERS = _IO_COUNTERS;
  {$EXTERNALSYM IO_COUNTERS}
  TIoCounters = IO_COUNTERS;
  PIoCounters = PIO_COUNTERS;

const
  {$EXTERNALSYM MAX_HW_COUNTERS}
  MAX_HW_COUNTERS                     = 16;
  {$EXTERNALSYM THREAD_PROFILING_FLAG_DISPATCH}
  THREAD_PROFILING_FLAG_DISPATCH      = $00000001;

type
  PHardwareCounterType = ^THardwareCounterType;
  {$EXTERNALSYM _HARDWARE_COUNTER_TYPE}
  _HARDWARE_COUNTER_TYPE = (
    PMCCounter,
    MaxHardwareCounterType
  );
  {$EXTERNALSYM HARDWARE_COUNTER_TYPE}
  HARDWARE_COUNTER_TYPE = _HARDWARE_COUNTER_TYPE;
  {$EXTERNALSYM PHARDWARE_COUNTER_TYPE}
  PHARDWARE_COUNTER_TYPE = ^_HARDWARE_COUNTER_TYPE;
  THardwareCounterType = _HARDWARE_COUNTER_TYPE;

  PJOBOBJECT_BASIC_ACCOUNTING_INFORMATION = ^JOBOBJECT_BASIC_ACCOUNTING_INFORMATION;
  {$EXTERNALSYM PJOBOBJECT_BASIC_ACCOUNTING_INFORMATION}
  _JOBOBJECT_BASIC_ACCOUNTING_INFORMATION = record
    TotalUserTime: LARGE_INTEGER;
    TotalKernelTime: LARGE_INTEGER;
    ThisPeriodTotalUserTime: LARGE_INTEGER;
    ThisPeriodTotalKernelTime: LARGE_INTEGER;
    TotalPageFaultCount: DWORD;
    TotalProcesses: DWORD;
    ActiveProcesses: DWORD;
    TotalTerminatedProcesses: DWORD;
  end;
  {$EXTERNALSYM _JOBOBJECT_BASIC_ACCOUNTING_INFORMATION}
  JOBOBJECT_BASIC_ACCOUNTING_INFORMATION = _JOBOBJECT_BASIC_ACCOUNTING_INFORMATION;
  {$EXTERNALSYM JOBOBJECT_BASIC_ACCOUNTING_INFORMATION}
  TJobObjectBasicAccountingInformation = JOBOBJECT_BASIC_ACCOUNTING_INFORMATION;
  PJobObjectBasicAccountingInformation = PJOBOBJECT_BASIC_ACCOUNTING_INFORMATION;

  PJOBOBJECT_BASIC_LIMIT_INFORMATION = ^JOBOBJECT_BASIC_LIMIT_INFORMATION;
  {$EXTERNALSYM PJOBOBJECT_BASIC_LIMIT_INFORMATION}
  _JOBOBJECT_BASIC_LIMIT_INFORMATION = record
    PerProcessUserTimeLimit: LARGE_INTEGER;
    PerJobUserTimeLimit: LARGE_INTEGER;
    LimitFlags: DWORD;
    MinimumWorkingSetSize: SIZE_T;
    MaximumWorkingSetSize: SIZE_T;
    ActiveProcessLimit: DWORD;
    Affinity: ULONG_PTR;
    PriorityClass: DWORD;
    SchedulingClass: DWORD;
  end;
  {$EXTERNALSYM _JOBOBJECT_BASIC_LIMIT_INFORMATION}
  JOBOBJECT_BASIC_LIMIT_INFORMATION = _JOBOBJECT_BASIC_LIMIT_INFORMATION;
  {$EXTERNALSYM JOBOBJECT_BASIC_LIMIT_INFORMATION}
  TJobObjectBasicLimitInformation = JOBOBJECT_BASIC_LIMIT_INFORMATION;
  PJobObjectBasicLimitInformation = PJOBOBJECT_BASIC_LIMIT_INFORMATION;

  PJOBOBJECT_EXTENDED_LIMIT_INFORMATION = ^JOBOBJECT_EXTENDED_LIMIT_INFORMATION;
  {$EXTERNALSYM PJOBOBJECT_EXTENDED_LIMIT_INFORMATION}
  _JOBOBJECT_EXTENDED_LIMIT_INFORMATION = record
    BasicLimitInformation: JOBOBJECT_BASIC_LIMIT_INFORMATION;
    IoInfo: IO_COUNTERS;
    ProcessMemoryLimit: SIZE_T;
    JobMemoryLimit: SIZE_T;
    PeakProcessMemoryUsed: SIZE_T;
    PeakJobMemoryUsed: SIZE_T;
  end;
  {$EXTERNALSYM _JOBOBJECT_EXTENDED_LIMIT_INFORMATION}
  JOBOBJECT_EXTENDED_LIMIT_INFORMATION = _JOBOBJECT_EXTENDED_LIMIT_INFORMATION;
  {$EXTERNALSYM JOBOBJECT_EXTENDED_LIMIT_INFORMATION}
  TJobObjectExtendedLimitInformation = JOBOBJECT_EXTENDED_LIMIT_INFORMATION;
  PJobObjectExtendedLimitInformation = PJOBOBJECT_EXTENDED_LIMIT_INFORMATION;

  PJOBOBJECT_BASIC_PROCESS_ID_LIST = ^JOBOBJECT_BASIC_PROCESS_ID_LIST;
  {$EXTERNALSYM PJOBOBJECT_BASIC_PROCESS_ID_LIST}
  _JOBOBJECT_BASIC_PROCESS_ID_LIST = record
    NumberOfAssignedProcesses: DWORD;
    NumberOfProcessIdsInList: DWORD;
    ProcessIdList: array [0..0] of ULONG_PTR;
  end;
  {$EXTERNALSYM _JOBOBJECT_BASIC_PROCESS_ID_LIST}
  JOBOBJECT_BASIC_PROCESS_ID_LIST = _JOBOBJECT_BASIC_PROCESS_ID_LIST;
  {$EXTERNALSYM JOBOBJECT_BASIC_PROCESS_ID_LIST}
  TJobObjectBasicProcessIdList = JOBOBJECT_BASIC_PROCESS_ID_LIST;
  PJobObjectBasicProcessIdList = PJOBOBJECT_BASIC_PROCESS_ID_LIST;

  PJOBOBJECT_BASIC_UI_RESTRICTIONS = ^JOBOBJECT_BASIC_UI_RESTRICTIONS;
  {$EXTERNALSYM PJOBOBJECT_BASIC_UI_RESTRICTIONS}
  _JOBOBJECT_BASIC_UI_RESTRICTIONS = record
    UIRestrictionsClass: DWORD;
  end;
  {$EXTERNALSYM _JOBOBJECT_BASIC_UI_RESTRICTIONS}
  JOBOBJECT_BASIC_UI_RESTRICTIONS = _JOBOBJECT_BASIC_UI_RESTRICTIONS;
  {$EXTERNALSYM JOBOBJECT_BASIC_UI_RESTRICTIONS}
  TJobObjectBasicUiRestrictions = JOBOBJECT_BASIC_UI_RESTRICTIONS;
  PJobObjectBasicUiRestrictions = PJOBOBJECT_BASIC_UI_RESTRICTIONS;

  PJOBOBJECT_SECURITY_LIMIT_INFORMATION = ^JOBOBJECT_SECURITY_LIMIT_INFORMATION;
  {$EXTERNALSYM PJOBOBJECT_SECURITY_LIMIT_INFORMATION}
  _JOBOBJECT_SECURITY_LIMIT_INFORMATION = record
    SecurityLimitFlags : DWORD;
    JobToken : THandle;
    SidsToDisable : PTOKEN_GROUPS;
    PrivilegesToDelete : PTOKEN_PRIVILEGES;
    RestrictedSids : PTOKEN_GROUPS;
  end;
  {$EXTERNALSYM _JOBOBJECT_SECURITY_LIMIT_INFORMATION}
  JOBOBJECT_SECURITY_LIMIT_INFORMATION = _JOBOBJECT_SECURITY_LIMIT_INFORMATION;
  {$EXTERNALSYM JOBOBJECT_SECURITY_LIMIT_INFORMATION}
  TJobObjectSecurityLimitInformation = JOBOBJECT_SECURITY_LIMIT_INFORMATION;
  PJobObjectSecurityLimitInformation = PJOBOBJECT_SECURITY_LIMIT_INFORMATION;

  PJOBOBJECT_END_OF_JOB_TIME_INFORMATION = ^JOBOBJECT_END_OF_JOB_TIME_INFORMATION;
  {$EXTERNALSYM PJOBOBJECT_END_OF_JOB_TIME_INFORMATION}
  _JOBOBJECT_END_OF_JOB_TIME_INFORMATION = record
    EndOfJobTimeAction: DWORD;
  end;
  {$EXTERNALSYM _JOBOBJECT_END_OF_JOB_TIME_INFORMATION}
  JOBOBJECT_END_OF_JOB_TIME_INFORMATION = _JOBOBJECT_END_OF_JOB_TIME_INFORMATION;
  {$EXTERNALSYM JOBOBJECT_END_OF_JOB_TIME_INFORMATION}
  TJobObjectEndOfJobTimeInformation = JOBOBJECT_END_OF_JOB_TIME_INFORMATION;
  PJobObjectEndOfJobTimeInformation = PJOBOBJECT_END_OF_JOB_TIME_INFORMATION;

  PJOBOBJECT_ASSOCIATE_COMPLETION_PORT = ^JOBOBJECT_ASSOCIATE_COMPLETION_PORT;
  {$EXTERNALSYM PJOBOBJECT_ASSOCIATE_COMPLETION_PORT}
  _JOBOBJECT_ASSOCIATE_COMPLETION_PORT = record
    CompletionKey: Pointer;
    CompletionPort: THandle;
  end;
  {$EXTERNALSYM _JOBOBJECT_ASSOCIATE_COMPLETION_PORT}
  JOBOBJECT_ASSOCIATE_COMPLETION_PORT = _JOBOBJECT_ASSOCIATE_COMPLETION_PORT;
  {$EXTERNALSYM JOBOBJECT_ASSOCIATE_COMPLETION_PORT}
  TJobObjectAssociateCompletionPort = JOBOBJECT_ASSOCIATE_COMPLETION_PORT;
  PJobObjectAssociateCompletionPort = PJOBOBJECT_ASSOCIATE_COMPLETION_PORT;

  PJOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION = ^JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION;
  {$EXTERNALSYM PJOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION}
  _JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION = record
    BasicInfo: JOBOBJECT_BASIC_ACCOUNTING_INFORMATION;
    IoInfo: IO_COUNTERS;
  end;
  {$EXTERNALSYM _JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION}
  JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION = _JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION;
  {$EXTERNALSYM JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION}
  TJobObjectBasicAndIoAccountingInformation = JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION;
  PJobObjectBasicAndIoAccountingInformation = PJOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION;

  _JOBOBJECT_JOBSET_INFORMATION = record
    MemberLevel: DWORD;
  end;
  {$EXTERNALSYM _JOBOBJECT_JOBSET_INFORMATION}
  JOBOBJECT_JOBSET_INFORMATION = _JOBOBJECT_JOBSET_INFORMATION;
  {$EXTERNALSYM JOBOBJECT_JOBSET_INFORMATION}
  PJOBOBJECT_JOBSET_INFORMATION = ^JOBOBJECT_JOBSET_INFORMATION;
  {$EXTERNALSYM PJOBOBJECT_JOBSET_INFORMATION}
  TJobObjectSetInformation = JOBOBJECT_JOBSET_INFORMATION;
  PJobObjectSetInformation = PJOBOBJECT_JOBSET_INFORMATION;

const
  JOB_OBJECT_TERMINATE_AT_END_OF_JOB = 0;
  {$EXTERNALSYM JOB_OBJECT_TERMINATE_AT_END_OF_JOB}
  JOB_OBJECT_POST_AT_END_OF_JOB      = 1;
  {$EXTERNALSYM JOB_OBJECT_POST_AT_END_OF_JOB}

//
// Completion Port Messages for job objects
//
// These values are returned via the lpNumberOfBytesTransferred parameter
//

  JOB_OBJECT_MSG_END_OF_JOB_TIME       = 1;
  {$EXTERNALSYM JOB_OBJECT_MSG_END_OF_JOB_TIME}
  JOB_OBJECT_MSG_END_OF_PROCESS_TIME   = 2;
  {$EXTERNALSYM JOB_OBJECT_MSG_END_OF_PROCESS_TIME}
  JOB_OBJECT_MSG_ACTIVE_PROCESS_LIMIT  = 3;
  {$EXTERNALSYM JOB_OBJECT_MSG_ACTIVE_PROCESS_LIMIT}
  JOB_OBJECT_MSG_ACTIVE_PROCESS_ZERO   = 4;
  {$EXTERNALSYM JOB_OBJECT_MSG_ACTIVE_PROCESS_ZERO}
  JOB_OBJECT_MSG_NEW_PROCESS           = 6;
  {$EXTERNALSYM JOB_OBJECT_MSG_NEW_PROCESS}
  JOB_OBJECT_MSG_EXIT_PROCESS          = 7;
  {$EXTERNALSYM JOB_OBJECT_MSG_EXIT_PROCESS}
  JOB_OBJECT_MSG_ABNORMAL_EXIT_PROCESS = 8;
  {$EXTERNALSYM JOB_OBJECT_MSG_ABNORMAL_EXIT_PROCESS}
  JOB_OBJECT_MSG_PROCESS_MEMORY_LIMIT  = 9;
  {$EXTERNALSYM JOB_OBJECT_MSG_PROCESS_MEMORY_LIMIT}
  JOB_OBJECT_MSG_JOB_MEMORY_LIMIT      = 10;
  {$EXTERNALSYM JOB_OBJECT_MSG_JOB_MEMORY_LIMIT}

//
// Basic Limits
//

  JOB_OBJECT_LIMIT_WORKINGSET        = $00000001;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_WORKINGSET}
  JOB_OBJECT_LIMIT_PROCESS_TIME      = $00000002;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_PROCESS_TIME}
  JOB_OBJECT_LIMIT_JOB_TIME          = $00000004;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_JOB_TIME}
  JOB_OBJECT_LIMIT_ACTIVE_PROCESS    = $00000008;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_ACTIVE_PROCESS}
  JOB_OBJECT_LIMIT_AFFINITY          = $00000010;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_AFFINITY}
  JOB_OBJECT_LIMIT_PRIORITY_CLASS    = $00000020;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_PRIORITY_CLASS}
  JOB_OBJECT_LIMIT_PRESERVE_JOB_TIME = $00000040;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_PRESERVE_JOB_TIME}
  JOB_OBJECT_LIMIT_SCHEDULING_CLASS  = $00000080;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_SCHEDULING_CLASS}

//
// Extended Limits
//

  JOB_OBJECT_LIMIT_PROCESS_MEMORY             = $00000100;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_PROCESS_MEMORY}
  JOB_OBJECT_LIMIT_JOB_MEMORY                 = $00000200;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_JOB_MEMORY}
  JOB_OBJECT_LIMIT_DIE_ON_UNHANDLED_EXCEPTION = $00000400;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_DIE_ON_UNHANDLED_EXCEPTION}
  JOB_OBJECT_LIMIT_BREAKAWAY_OK               = $00000800;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_BREAKAWAY_OK}
  JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK        = $00001000;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK}
  JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE          = $00002000;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE}

  JOB_OBJECT_LIMIT_RESERVED2 = $00004000;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_RESERVED2}
  JOB_OBJECT_LIMIT_RESERVED3 = $00008000;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_RESERVED3}
  JOB_OBJECT_LIMIT_RESERVED4 = $00010000;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_RESERVED4}
  JOB_OBJECT_LIMIT_RESERVED5 = $00020000;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_RESERVED5}
  JOB_OBJECT_LIMIT_RESERVED6 = $00040000;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_RESERVED6}

  JOB_OBJECT_LIMIT_VALID_FLAGS = $0007ffff;
  {$EXTERNALSYM JOB_OBJECT_LIMIT_VALID_FLAGS}

  JOB_OBJECT_BASIC_LIMIT_VALID_FLAGS    = $000000ff;
  {$EXTERNALSYM JOB_OBJECT_BASIC_LIMIT_VALID_FLAGS}
  JOB_OBJECT_EXTENDED_LIMIT_VALID_FLAGS = $00003fff;
  {$EXTERNALSYM JOB_OBJECT_EXTENDED_LIMIT_VALID_FLAGS}
  JOB_OBJECT_RESERVED_LIMIT_VALID_FLAGS = $0007ffff;
  {$EXTERNALSYM JOB_OBJECT_RESERVED_LIMIT_VALID_FLAGS}

//
// UI restrictions for jobs
//

  JOB_OBJECT_UILIMIT_NONE = $00000000;
  {$EXTERNALSYM JOB_OBJECT_UILIMIT_NONE}

  JOB_OBJECT_UILIMIT_HANDLES          = $00000001;
  {$EXTERNALSYM JOB_OBJECT_UILIMIT_HANDLES}
  JOB_OBJECT_UILIMIT_READCLIPBOARD    = $00000002;
  {$EXTERNALSYM JOB_OBJECT_UILIMIT_READCLIPBOARD}
  JOB_OBJECT_UILIMIT_WRITECLIPBOARD   = $00000004;
  {$EXTERNALSYM JOB_OBJECT_UILIMIT_WRITECLIPBOARD}
  JOB_OBJECT_UILIMIT_SYSTEMPARAMETERS = $00000008;
  {$EXTERNALSYM JOB_OBJECT_UILIMIT_SYSTEMPARAMETERS}
  JOB_OBJECT_UILIMIT_DISPLAYSETTINGS  = $00000010;
  {$EXTERNALSYM JOB_OBJECT_UILIMIT_DISPLAYSETTINGS}
  JOB_OBJECT_UILIMIT_GLOBALATOMS      = $00000020;
  {$EXTERNALSYM JOB_OBJECT_UILIMIT_GLOBALATOMS}
  JOB_OBJECT_UILIMIT_DESKTOP          = $00000040;
  {$EXTERNALSYM JOB_OBJECT_UILIMIT_DESKTOP}
  JOB_OBJECT_UILIMIT_EXITWINDOWS      = $00000080;
  {$EXTERNALSYM JOB_OBJECT_UILIMIT_EXITWINDOWS}

  JOB_OBJECT_UILIMIT_ALL = $000000FF;
  {$EXTERNALSYM JOB_OBJECT_UILIMIT_ALL}

  JOB_OBJECT_UI_VALID_FLAGS = $000000FF;
  {$EXTERNALSYM JOB_OBJECT_UI_VALID_FLAGS}

  JOB_OBJECT_SECURITY_NO_ADMIN         = $00000001;
  {$EXTERNALSYM JOB_OBJECT_SECURITY_NO_ADMIN}
  JOB_OBJECT_SECURITY_RESTRICTED_TOKEN = $00000002;
  {$EXTERNALSYM JOB_OBJECT_SECURITY_RESTRICTED_TOKEN}
  JOB_OBJECT_SECURITY_ONLY_TOKEN       = $00000004;
  {$EXTERNALSYM JOB_OBJECT_SECURITY_ONLY_TOKEN}
  JOB_OBJECT_SECURITY_FILTER_TOKENS    = $00000008;
  {$EXTERNALSYM JOB_OBJECT_SECURITY_FILTER_TOKENS}

  JOB_OBJECT_SECURITY_VALID_FLAGS = $0000000f;
  {$EXTERNALSYM JOB_OBJECT_SECURITY_VALID_FLAGS}

type
  _JOBOBJECTINFOCLASS = (
    JobObjectInfoClassPadding0,
    JobObjectBasicAccountingInformation,
    JobObjectBasicLimitInformation,
    JobObjectBasicProcessIdList,
    JobObjectBasicUIRestrictions,
    JobObjectSecurityLimitInformation,
    JobObjectEndOfJobTimeInformation,
    JobObjectAssociateCompletionPortInformation,
    JobObjectBasicAndIoAccountingInformation,
    JobObjectExtendedLimitInformation,
    JobObjectJobSetInformation,
    MaxJobObjectInfoClass);
  {$EXTERNALSYM _JOBOBJECTINFOCLASS}
  JOBOBJECTINFOCLASS = _JOBOBJECTINFOCLASS;
  {$EXTERNALSYM JOBOBJECTINFOCLASS}
  TJobObjectInfoClass = JOBOBJECTINFOCLASS;

const
  EVENT_MODIFY_STATE = $0002;
  {$EXTERNALSYM EVENT_MODIFY_STATE}
  EVENT_ALL_ACCESS   = STANDARD_RIGHTS_REQUIRED or SYNCHRONIZE or $3;
  {$EXTERNALSYM EVENT_ALL_ACCESS}
  MUTANT_QUERY_STATE = $0001;
  {$EXTERNALSYM MUTANT_QUERY_STATE}

  MUTANT_ALL_ACCESS      = STANDARD_RIGHTS_REQUIRED or SYNCHRONIZE or MUTANT_QUERY_STATE;
  {$EXTERNALSYM MUTANT_ALL_ACCESS}
  SEMAPHORE_MODIFY_STATE = $0002;
  {$EXTERNALSYM SEMAPHORE_MODIFY_STATE}
  SEMAPHORE_ALL_ACCESS   = STANDARD_RIGHTS_REQUIRED or SYNCHRONIZE or $3;
  {$EXTERNALSYM SEMAPHORE_ALL_ACCESS}

//
// Timer Specific Access Rights.
//

  TIMER_QUERY_STATE  = $0001;
  {$EXTERNALSYM TIMER_QUERY_STATE}
  TIMER_MODIFY_STATE = $0002;
  {$EXTERNALSYM TIMER_MODIFY_STATE}

  TIMER_ALL_ACCESS = STANDARD_RIGHTS_REQUIRED or SYNCHRONIZE or TIMER_QUERY_STATE or TIMER_MODIFY_STATE;
  {$EXTERNALSYM TIMER_ALL_ACCESS}

  TIME_ZONE_ID_UNKNOWN  = 0;
  {$EXTERNALSYM TIME_ZONE_ID_UNKNOWN}
  TIME_ZONE_ID_STANDARD = 1;
  {$EXTERNALSYM TIME_ZONE_ID_STANDARD}
  TIME_ZONE_ID_DAYLIGHT = 2;
  {$EXTERNALSYM TIME_ZONE_ID_DAYLIGHT}

type
  _LOGICAL_PROCESSOR_RELATIONSHIP = (RelationProcessorCore{ = 0}, RelationNumaNode{ = 1}, RelationCache{ = 2}, RelationProcessorPackage{ = 3});
  {$EXTERNALSYM _LOGICAL_PROCESSOR_RELATIONSHIP}
  LOGICAL_PROCESSOR_RELATIONSHIP = _LOGICAL_PROCESSOR_RELATIONSHIP;
  {$EXTERNALSYM LOGICAL_PROCESSOR_RELATIONSHIP}
  TLogicalProcessorRelationship = LOGICAL_PROCESSOR_RELATIONSHIP;

const
  LTP_PC_SMT = $1;
  {$EXTERNALSYM LTP_PC_SMT}

type
  _SYSTEM_LOGICAL_PROCESSOR_INFORMATION = record
    ProcessorMask: ULONG_PTR;
    Relationship: LOGICAL_PROCESSOR_RELATIONSHIP;
    case Integer of
      0: (Flags: BYTE); // ProcessorCore
      1: (NodeNumber: DWORD); // NumaNode
      2: (Reserved: array [0..1] of ULONGLONG);
  end;
  {$EXTERNALSYM _SYSTEM_LOGICAL_PROCESSOR_INFORMATION}
  SYSTEM_LOGICAL_PROCESSOR_INFORMATION = _SYSTEM_LOGICAL_PROCESSOR_INFORMATION;
  {$EXTERNALSYM SYSTEM_LOGICAL_PROCESSOR_INFORMATION}
  PSYSTEM_LOGICAL_PROCESSOR_INFORMATION = ^SYSTEM_LOGICAL_PROCESSOR_INFORMATION;
  TSystemLogicalProcessorInformation = SYSTEM_LOGICAL_PROCESSOR_INFORMATION;
  PSystemLogicalProcessorInformation = PSYSTEM_LOGICAL_PROCESSOR_INFORMATION;

const
  PROCESSOR_INTEL_386     = 386;
  {$EXTERNALSYM PROCESSOR_INTEL_386}
  PROCESSOR_INTEL_486     = 486;
  {$EXTERNALSYM PROCESSOR_INTEL_486}
  PROCESSOR_INTEL_PENTIUM = 586;
  {$EXTERNALSYM PROCESSOR_INTEL_PENTIUM}
  PROCESSOR_INTEL_IA64    = 2200;
  {$EXTERNALSYM PROCESSOR_INTEL_IA64}
  PROCESSOR_AMD_X8664     = 8664;
  {$EXTERNALSYM PROCESSOR_AMD_X8664}
  PROCESSOR_MIPS_R4000    = 4000; // incl R4101 & R3910 for Windows CE
  {$EXTERNALSYM PROCESSOR_MIPS_R4000}
  PROCESSOR_ALPHA_21064   = 21064;
  {$EXTERNALSYM PROCESSOR_ALPHA_21064}
  PROCESSOR_PPC_601       = 601;
  {$EXTERNALSYM PROCESSOR_PPC_601}
  PROCESSOR_PPC_603       = 603;
  {$EXTERNALSYM PROCESSOR_PPC_603}
  PROCESSOR_PPC_604       = 604;
  {$EXTERNALSYM PROCESSOR_PPC_604}
  PROCESSOR_PPC_620       = 620;
  {$EXTERNALSYM PROCESSOR_PPC_620}
  PROCESSOR_HITACHI_SH3   = 10003; // Windows CE
  {$EXTERNALSYM PROCESSOR_HITACHI_SH3}
  PROCESSOR_HITACHI_SH3E  = 10004; // Windows CE
  {$EXTERNALSYM PROCESSOR_HITACHI_SH3E}
  PROCESSOR_HITACHI_SH4   = 10005; // Windows CE
  {$EXTERNALSYM PROCESSOR_HITACHI_SH4}
  PROCESSOR_MOTOROLA_821  = 821; // Windows CE
  {$EXTERNALSYM PROCESSOR_MOTOROLA_821}
  PROCESSOR_SHx_SH3       = 103; // Windows CE
  {$EXTERNALSYM PROCESSOR_SHx_SH3}
  PROCESSOR_SHx_SH4       = 104; // Windows CE
  {$EXTERNALSYM PROCESSOR_SHx_SH4}
  PROCESSOR_STRONGARM     = 2577; // Windows CE - 0xA11
  {$EXTERNALSYM PROCESSOR_STRONGARM}
  PROCESSOR_ARM720        = 1824; // Windows CE - 0x720
  {$EXTERNALSYM PROCESSOR_ARM720}
  PROCESSOR_ARM820        = 2080; // Windows CE - 0x820
  {$EXTERNALSYM PROCESSOR_ARM820}
  PROCESSOR_ARM920        = 2336; // Windows CE - 0x920
  {$EXTERNALSYM PROCESSOR_ARM920}
  PROCESSOR_ARM_7TDMI     = 70001; // Windows CE
  {$EXTERNALSYM PROCESSOR_ARM_7TDMI}
  PROCESSOR_OPTIL         = $494f; // MSIL
  {$EXTERNALSYM PROCESSOR_OPTIL}

  PROCESSOR_ARCHITECTURE_INTEL   = 0;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_INTEL}
  PROCESSOR_ARCHITECTURE_MIPS    = 1;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_MIPS}
  PROCESSOR_ARCHITECTURE_ALPHA   = 2;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_ALPHA}
  PROCESSOR_ARCHITECTURE_PPC     = 3;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_PPC}
  PROCESSOR_ARCHITECTURE_SHX     = 4;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_SHX}
  PROCESSOR_ARCHITECTURE_ARM     = 5;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_ARM}
  PROCESSOR_ARCHITECTURE_IA64    = 6;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_IA64}
  PROCESSOR_ARCHITECTURE_ALPHA64 = 7;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_ALPHA64}
  PROCESSOR_ARCHITECTURE_MSIL    = 8;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_MSIL}
  PROCESSOR_ARCHITECTURE_AMD64         = 9;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_AMD64}
  PROCESSOR_ARCHITECTURE_IA32_ON_WIN64 = 10;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_IA32_ON_WIN64}

  PROCESSOR_ARCHITECTURE_UNKNOWN = $FFFF;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_UNKNOWN}

  PF_FLOATING_POINT_PRECISION_ERRATA = 0;
  {$EXTERNALSYM PF_FLOATING_POINT_PRECISION_ERRATA}
  PF_FLOATING_POINT_EMULATED         = 1;
  {$EXTERNALSYM PF_FLOATING_POINT_EMULATED}
  PF_COMPARE_EXCHANGE_DOUBLE         = 2;
  {$EXTERNALSYM PF_COMPARE_EXCHANGE_DOUBLE}
  PF_MMX_INSTRUCTIONS_AVAILABLE      = 3;
  {$EXTERNALSYM PF_MMX_INSTRUCTIONS_AVAILABLE}
  PF_PPC_MOVEMEM_64BIT_OK            = 4;
  {$EXTERNALSYM PF_PPC_MOVEMEM_64BIT_OK}
  PF_ALPHA_BYTE_INSTRUCTIONS         = 5;
  {$EXTERNALSYM PF_ALPHA_BYTE_INSTRUCTIONS}
  PF_XMMI_INSTRUCTIONS_AVAILABLE     = 6;
  {$EXTERNALSYM PF_XMMI_INSTRUCTIONS_AVAILABLE}
  PF_3DNOW_INSTRUCTIONS_AVAILABLE    = 7;
  {$EXTERNALSYM PF_3DNOW_INSTRUCTIONS_AVAILABLE}
  PF_RDTSC_INSTRUCTION_AVAILABLE     = 8;
  {$EXTERNALSYM PF_RDTSC_INSTRUCTION_AVAILABLE}
  PF_PAE_ENABLED                     = 9;
  {$EXTERNALSYM PF_PAE_ENABLED}
  PF_XMMI64_INSTRUCTIONS_AVAILABLE   = 10;
  {$EXTERNALSYM PF_XMMI64_INSTRUCTIONS_AVAILABLE}
  PF_SSE_DAZ_MODE_AVAILABLE         = 11;
  {$EXTERNALSYM PF_SSE_DAZ_MODE_AVAILABLE}
  PF_NX_ENABLED                     = 12;
  {$EXTERNALSYM PF_NX_ENABLED}
  PF_SSE3_INSTRUCTIONS_AVAILABLE    = 13;
  {$EXTERNALSYM PF_SSE3_INSTRUCTIONS_AVAILABLE}
  PF_COMPARE_EXCHANGE128            = 14;
  {$EXTERNALSYM PF_COMPARE_EXCHANGE128}
  PF_COMPARE64_EXCHANGE128          = 15;
  {$EXTERNALSYM PF_COMPARE64_EXCHANGE128}
  PF_CHANNELS_ENABLED               = 16;
  {$EXTERNALSYM PF_CHANNELS_ENABLED}
  PF_XSAVE_ENABLED                    = 17;
  {$EXTERNALSYM PF_XSAVE_ENABLED}

type
  PMEMORY_BASIC_INFORMATION = ^MEMORY_BASIC_INFORMATION;
  {$EXTERNALSYM PMEMORY_BASIC_INFORMATION}
  _MEMORY_BASIC_INFORMATION = record
    BaseAddress: Pointer;
    AllocationBase: Pointer;
    AllocationProtect: DWORD;
    RegionSize: SIZE_T;
    State: DWORD;
    Protect: DWORD;
    Type_: DWORD;
  end;
  {$EXTERNALSYM _MEMORY_BASIC_INFORMATION}
  MEMORY_BASIC_INFORMATION = _MEMORY_BASIC_INFORMATION;
  {$EXTERNALSYM MEMORY_BASIC_INFORMATION}
  TMemoryBasicInformation = MEMORY_BASIC_INFORMATION;
  PMemoryBasicInformation = PMEMORY_BASIC_INFORMATION;

  PMEMORY_BASIC_INFORMATION32 = ^MEMORY_BASIC_INFORMATION32;
  {$EXTERNALSYM PMEMORY_BASIC_INFORMATION32}
  _MEMORY_BASIC_INFORMATION32 = record
    BaseAddress: DWORD;
    AllocationBase: DWORD;
    AllocationProtect: DWORD;
    RegionSize: DWORD;
    State: DWORD;
    Protect: DWORD;
    Type_: DWORD;
  end;
  {$EXTERNALSYM _MEMORY_BASIC_INFORMATION32}
  MEMORY_BASIC_INFORMATION32 = _MEMORY_BASIC_INFORMATION32;
  {$EXTERNALSYM MEMORY_BASIC_INFORMATION32}
  TMemoryBasicInformation32 = MEMORY_BASIC_INFORMATION32;
  PMemoryBasicInformation32 = PMEMORY_BASIC_INFORMATION32;

  PMEMORY_BASIC_INFORMATION64 = ^MEMORY_BASIC_INFORMATION64;
  {$EXTERNALSYM PMEMORY_BASIC_INFORMATION64}
  _MEMORY_BASIC_INFORMATION64 = record
    BaseAddress: ULONGLONG;
    AllocationBase: ULONGLONG;
    AllocationProtect: DWORD;
    __alignment1: DWORD;
    RegionSize: ULONGLONG;
    State: DWORD;
    Protect: DWORD;
    Type_: DWORD;
    __alignment2: DWORD;
  end;
  {$EXTERNALSYM _MEMORY_BASIC_INFORMATION64}
  MEMORY_BASIC_INFORMATION64 = _MEMORY_BASIC_INFORMATION64;
  {$EXTERNALSYM MEMORY_BASIC_INFORMATION64}
  TMemoryBasicInformation64 = MEMORY_BASIC_INFORMATION64;
  PMemoryBasicInformation64 = PMEMORY_BASIC_INFORMATION64;

const
  SECTION_QUERY       = $0001;
  {$EXTERNALSYM SECTION_QUERY}
  SECTION_MAP_WRITE   = $0002;
  {$EXTERNALSYM SECTION_MAP_WRITE}
  SECTION_MAP_READ    = $0004;
  {$EXTERNALSYM SECTION_MAP_READ}
  SECTION_MAP_EXECUTE = $0008;
  {$EXTERNALSYM SECTION_MAP_EXECUTE}
  SECTION_EXTEND_SIZE = $0010;
  {$EXTERNALSYM SECTION_EXTEND_SIZE}

  SECTION_ALL_ACCESS = (STANDARD_RIGHTS_REQUIRED or SECTION_QUERY or
    SECTION_MAP_WRITE or SECTION_MAP_READ or SECTION_MAP_EXECUTE or
    SECTION_EXTEND_SIZE);
  {$EXTERNALSYM SECTION_ALL_ACCESS}

  SESSION_QUERY_ACCESS                = $0001;
  {$EXTERNALSYM SESSION_QUERY_ACCESS}
  SESSION_MODIFY_ACCESS               = $0002;
  {$EXTERNALSYM SESSION_MODIFY_ACCESS}

  SESSION_ALL_ACCESS                  = (STANDARD_RIGHTS_REQUIRED or
    SESSION_QUERY_ACCESS or SESSION_MODIFY_ACCESS);
  {$EXTERNALSYM SESSION_ALL_ACCESS}

  PAGE_NOACCESS          = $01;
  {$EXTERNALSYM PAGE_NOACCESS}
  PAGE_READONLY          = $02;
  {$EXTERNALSYM PAGE_READONLY}
  PAGE_READWRITE         = $04;
  {$EXTERNALSYM PAGE_READWRITE}
  PAGE_WRITECOPY         = $08;
  {$EXTERNALSYM PAGE_WRITECOPY}
  PAGE_EXECUTE           = $10;
  {$EXTERNALSYM PAGE_EXECUTE}
  PAGE_EXECUTE_READ      = $20;
  {$EXTERNALSYM PAGE_EXECUTE_READ}
  PAGE_EXECUTE_READWRITE = $40;
  {$EXTERNALSYM PAGE_EXECUTE_READWRITE}
  PAGE_EXECUTE_WRITECOPY = $80;
  {$EXTERNALSYM PAGE_EXECUTE_WRITECOPY}
  PAGE_GUARD             = $100;
  {$EXTERNALSYM PAGE_GUARD}
  PAGE_NOCACHE           = $200;
  {$EXTERNALSYM PAGE_NOCACHE}
  PAGE_WRITECOMBINE      = $400;
  {$EXTERNALSYM PAGE_WRITECOMBINE}
  MEM_COMMIT             = $1000;
  {$EXTERNALSYM MEM_COMMIT}
  MEM_RESERVE            = $2000;
  {$EXTERNALSYM MEM_RESERVE}
  MEM_DECOMMIT           = $4000;
  {$EXTERNALSYM MEM_DECOMMIT}
  MEM_RELEASE            = $8000;
  {$EXTERNALSYM MEM_RELEASE}
  MEM_FREE               = $10000;
  {$EXTERNALSYM MEM_FREE}
  MEM_PRIVATE            = $20000;
  {$EXTERNALSYM MEM_PRIVATE}
  MEM_MAPPED             = $40000;
  {$EXTERNALSYM MEM_MAPPED}
  MEM_RESET              = $80000;
  {$EXTERNALSYM MEM_RESET}
  MEM_TOP_DOWN           = $100000;
  {$EXTERNALSYM MEM_TOP_DOWN}
  MEM_WRITE_WATCH        = $200000;
  {$EXTERNALSYM MEM_WRITE_WATCH}
  MEM_PHYSICAL           = $400000;
  {$EXTERNALSYM MEM_PHYSICAL}
  MEM_ROTATE                          = $800000;
  {$EXTERNALSYM MEM_ROTATE}
  MEM_LARGE_PAGES        = $20000000;
  {$EXTERNALSYM MEM_LARGE_PAGES}
  MEM_4MB_PAGES          = DWORD($80000000);
  {$EXTERNALSYM MEM_4MB_PAGES}
  SEC_FILE               = $800000;
  {$EXTERNALSYM SEC_FILE}
  SEC_IMAGE              = $1000000;
  {$EXTERNALSYM SEC_IMAGE}
  SEC_PROTECTED_IMAGE                 = $2000000;
  {$EXTERNALSYM SEC_PROTECTED_IMAGE}
  SEC_RESERVE            = $4000000;
  {$EXTERNALSYM SEC_RESERVE}
  SEC_COMMIT             = DWORD($8000000);
  {$EXTERNALSYM SEC_COMMIT}
  SEC_NOCACHE            = $10000000;
  {$EXTERNALSYM SEC_NOCACHE}
  SEC_WRITECOMBINE                    = $40000000;
  {$EXTERNALSYM SEC_WRITECOMBINE}
  SEC_LARGE_PAGES                     = $80000000;
  {$EXTERNALSYM SEC_LARGE_PAGES}
  MEM_IMAGE              = SEC_IMAGE;
  {$EXTERNALSYM MEM_IMAGE}
  WRITE_WATCH_FLAG_RESET = $01;
  {$EXTERNALSYM WRITE_WATCH_FLAG_RESET}

//
// Define access rights to files and directories
//

//
// The FILE_READ_DATA and FILE_WRITE_DATA constants are also defined in
// devioctl.h as FILE_READ_ACCESS and FILE_WRITE_ACCESS. The values for these
// constants *MUST* always be in sync.
// The values are redefined in devioctl.h because they must be available to
// both DOS and NT.
//

  FILE_READ_DATA            = $0001; // file & pipe
  {$EXTERNALSYM FILE_READ_DATA}
  FILE_LIST_DIRECTORY       = $0001; // directory
  {$EXTERNALSYM FILE_LIST_DIRECTORY}

  FILE_WRITE_DATA           = $0002; // file & pipe
  {$EXTERNALSYM FILE_WRITE_DATA}
  FILE_ADD_FILE             = $0002; // directory
  {$EXTERNALSYM FILE_ADD_FILE}

  FILE_APPEND_DATA          = $0004; // file
  {$EXTERNALSYM FILE_APPEND_DATA}
  FILE_ADD_SUBDIRECTORY     = $0004; // directory
  {$EXTERNALSYM FILE_ADD_SUBDIRECTORY}
  FILE_CREATE_PIPE_INSTANCE = $0004; // named pipe
  {$EXTERNALSYM FILE_CREATE_PIPE_INSTANCE}

  FILE_READ_EA = $0008; // file & directory
  {$EXTERNALSYM FILE_READ_EA}

  FILE_WRITE_EA = $0010; // file & directory
  {$EXTERNALSYM FILE_WRITE_EA}

  FILE_EXECUTE = $0020; // file
  {$EXTERNALSYM FILE_EXECUTE}
  FILE_TRAVERSE = $0020; // directory
  {$EXTERNALSYM FILE_TRAVERSE}

  FILE_DELETE_CHILD = $0040; // directory
  {$EXTERNALSYM FILE_DELETE_CHILD}

  FILE_READ_ATTRIBUTES = $0080; // all
  {$EXTERNALSYM FILE_READ_ATTRIBUTES}

  FILE_WRITE_ATTRIBUTES = $0100; // all
  {$EXTERNALSYM FILE_WRITE_ATTRIBUTES}

  FILE_ALL_ACCESS = STANDARD_RIGHTS_REQUIRED or SYNCHRONIZE or $1FF;
  {$EXTERNALSYM FILE_ALL_ACCESS}

  FILE_GENERIC_READ = (STANDARD_RIGHTS_READ or FILE_READ_DATA or
    FILE_READ_ATTRIBUTES or FILE_READ_EA or SYNCHRONIZE);
  {$EXTERNALSYM FILE_GENERIC_READ}

  FILE_GENERIC_WRITE = (STANDARD_RIGHTS_WRITE or FILE_WRITE_DATA or
    FILE_WRITE_ATTRIBUTES or FILE_WRITE_EA or FILE_APPEND_DATA or SYNCHRONIZE);
  {$EXTERNALSYM FILE_GENERIC_WRITE}

  FILE_GENERIC_EXECUTE = (STANDARD_RIGHTS_EXECUTE or FILE_READ_ATTRIBUTES or
    FILE_EXECUTE or SYNCHRONIZE);
  {$EXTERNALSYM FILE_GENERIC_EXECUTE}

  FILE_SHARE_READ                    = $00000001;
  {$EXTERNALSYM FILE_SHARE_READ}
  FILE_SHARE_WRITE                   = $00000002;
  {$EXTERNALSYM FILE_SHARE_WRITE}
  FILE_SHARE_DELETE                  = $00000004;
  {$EXTERNALSYM FILE_SHARE_DELETE}
  FILE_ATTRIBUTE_READONLY            = $00000001;
  {$EXTERNALSYM FILE_ATTRIBUTE_READONLY}
  FILE_ATTRIBUTE_HIDDEN              = $00000002;
  {$EXTERNALSYM FILE_ATTRIBUTE_HIDDEN}
  FILE_ATTRIBUTE_SYSTEM              = $00000004;
  {$EXTERNALSYM FILE_ATTRIBUTE_SYSTEM}
  FILE_ATTRIBUTE_DIRECTORY           = $00000010;
  {$EXTERNALSYM FILE_ATTRIBUTE_DIRECTORY}
  FILE_ATTRIBUTE_ARCHIVE             = $00000020;
  {$EXTERNALSYM FILE_ATTRIBUTE_ARCHIVE}
  FILE_ATTRIBUTE_DEVICE              = $00000040;
  {$EXTERNALSYM FILE_ATTRIBUTE_DEVICE}
  FILE_ATTRIBUTE_NORMAL              = $00000080;
  {$EXTERNALSYM FILE_ATTRIBUTE_NORMAL}
  FILE_ATTRIBUTE_TEMPORARY           = $00000100;
  {$EXTERNALSYM FILE_ATTRIBUTE_TEMPORARY}
  FILE_ATTRIBUTE_SPARSE_FILE         = $00000200;
  {$EXTERNALSYM FILE_ATTRIBUTE_SPARSE_FILE}
  FILE_ATTRIBUTE_REPARSE_POINT       = $00000400;
  {$EXTERNALSYM FILE_ATTRIBUTE_REPARSE_POINT}
  FILE_ATTRIBUTE_COMPRESSED          = $00000800;
  {$EXTERNALSYM FILE_ATTRIBUTE_COMPRESSED}
  FILE_ATTRIBUTE_OFFLINE             = $00001000;
  {$EXTERNALSYM FILE_ATTRIBUTE_OFFLINE}
  FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = $00002000;
  {$EXTERNALSYM FILE_ATTRIBUTE_NOT_CONTENT_INDEXED}
  FILE_ATTRIBUTE_ENCRYPTED           = $00004000;
  {$EXTERNALSYM FILE_ATTRIBUTE_ENCRYPTED}
  FILE_ATTRIBUTE_VIRTUAL              = $00010000;
  {$EXTERNALSYM FILE_ATTRIBUTE_VIRTUAL}
  FILE_NOTIFY_CHANGE_FILE_NAME       = $00000001;
  {$EXTERNALSYM FILE_NOTIFY_CHANGE_FILE_NAME}
  FILE_NOTIFY_CHANGE_DIR_NAME        = $00000002;
  {$EXTERNALSYM FILE_NOTIFY_CHANGE_DIR_NAME}
  FILE_NOTIFY_CHANGE_ATTRIBUTES      = $00000004;
  {$EXTERNALSYM FILE_NOTIFY_CHANGE_ATTRIBUTES}
  FILE_NOTIFY_CHANGE_SIZE            = $00000008;
  {$EXTERNALSYM FILE_NOTIFY_CHANGE_SIZE}
  FILE_NOTIFY_CHANGE_LAST_WRITE      = $00000010;
  {$EXTERNALSYM FILE_NOTIFY_CHANGE_LAST_WRITE}
  FILE_NOTIFY_CHANGE_LAST_ACCESS     = $00000020;
  {$EXTERNALSYM FILE_NOTIFY_CHANGE_LAST_ACCESS}
  FILE_NOTIFY_CHANGE_CREATION        = $00000040;
  {$EXTERNALSYM FILE_NOTIFY_CHANGE_CREATION}
  FILE_NOTIFY_CHANGE_SECURITY        = $00000100;
  {$EXTERNALSYM FILE_NOTIFY_CHANGE_SECURITY}
  FILE_ACTION_ADDED                  = $00000001;
  {$EXTERNALSYM FILE_ACTION_ADDED}
  FILE_ACTION_REMOVED                = $00000002;
  {$EXTERNALSYM FILE_ACTION_REMOVED}
  FILE_ACTION_MODIFIED               = $00000003;
  {$EXTERNALSYM FILE_ACTION_MODIFIED}
  FILE_ACTION_RENAMED_OLD_NAME       = $00000004;
  {$EXTERNALSYM FILE_ACTION_RENAMED_OLD_NAME}
  FILE_ACTION_RENAMED_NEW_NAME       = $00000005;
  {$EXTERNALSYM FILE_ACTION_RENAMED_NEW_NAME}
  MAILSLOT_NO_MESSAGE                = DWORD(-1);
  {$EXTERNALSYM MAILSLOT_NO_MESSAGE}
  MAILSLOT_WAIT_FOREVER              = DWORD(-1);
  {$EXTERNALSYM MAILSLOT_WAIT_FOREVER}
  FILE_CASE_SENSITIVE_SEARCH         = $00000001;
  {$EXTERNALSYM FILE_CASE_SENSITIVE_SEARCH}
  FILE_CASE_PRESERVED_NAMES          = $00000002;
  {$EXTERNALSYM FILE_CASE_PRESERVED_NAMES}
  FILE_UNICODE_ON_DISK               = $00000004;
  {$EXTERNALSYM FILE_UNICODE_ON_DISK}
  FILE_PERSISTENT_ACLS               = $00000008;
  {$EXTERNALSYM FILE_PERSISTENT_ACLS}
  FILE_FILE_COMPRESSION              = $00000010;
  {$EXTERNALSYM FILE_FILE_COMPRESSION}
  FILE_VOLUME_QUOTAS                 = $00000020;
  {$EXTERNALSYM FILE_VOLUME_QUOTAS}
  FILE_SUPPORTS_SPARSE_FILES         = $00000040;
  {$EXTERNALSYM FILE_SUPPORTS_SPARSE_FILES}
  FILE_SUPPORTS_REPARSE_POINTS       = $00000080;
  {$EXTERNALSYM FILE_SUPPORTS_REPARSE_POINTS}
  FILE_SUPPORTS_REMOTE_STORAGE       = $00000100;
  {$EXTERNALSYM FILE_SUPPORTS_REMOTE_STORAGE}
  FILE_VOLUME_IS_COMPRESSED          = $00008000;
  {$EXTERNALSYM FILE_VOLUME_IS_COMPRESSED}
  FILE_SUPPORTS_OBJECT_IDS           = $00010000;
  {$EXTERNALSYM FILE_SUPPORTS_OBJECT_IDS}
  FILE_SUPPORTS_ENCRYPTION           = $00020000;
  {$EXTERNALSYM FILE_SUPPORTS_ENCRYPTION}
  FILE_NAMED_STREAMS                 = $00040000;
  {$EXTERNALSYM FILE_NAMED_STREAMS}
  FILE_READ_ONLY_VOLUME              = $00080000;
  {$EXTERNALSYM FILE_READ_ONLY_VOLUME}
  FILE_SEQUENTIAL_WRITE_ONCE          = $00100000;
  {$EXTERNALSYM FILE_SEQUENTIAL_WRITE_ONCE}
  FILE_SUPPORTS_TRANSACTIONS          = $00200000;
  {$EXTERNALSYM FILE_SUPPORTS_TRANSACTIONS}
  FILE_SUPPORTS_HARD_LINKS            = $00400000;
  {$EXTERNALSYM FILE_SUPPORTS_HARD_LINKS}
  FILE_SUPPORTS_EXTENDED_ATTRIBUTES   = $00800000;
  {$EXTERNALSYM FILE_SUPPORTS_EXTENDED_ATTRIBUTES}
  FILE_SUPPORTS_OPEN_BY_FILE_ID       = $01000000;
  {$EXTERNALSYM FILE_SUPPORTS_OPEN_BY_FILE_ID}
  FILE_SUPPORTS_USN_JOURNAL           = $02000000;
  {$EXTERNALSYM FILE_SUPPORTS_USN_JOURNAL}

//
// Define the file notification information structure
//

type
  PFILE_NOTIFY_INFORMATION = ^FILE_NOTIFY_INFORMATION;
  {$EXTERNALSYM PFILE_NOTIFY_INFORMATION}
  _FILE_NOTIFY_INFORMATION = record
    NextEntryOffset: DWORD;
    Action: DWORD;
    FileNameLength: DWORD;
    FileName: array [0..0] of WCHAR;
  end;
  {$EXTERNALSYM _FILE_NOTIFY_INFORMATION}
  FILE_NOTIFY_INFORMATION = _FILE_NOTIFY_INFORMATION;
  {$EXTERNALSYM FILE_NOTIFY_INFORMATION}
  TFileNotifyInformation = FILE_NOTIFY_INFORMATION;
  PFileNotifyInformation = PFILE_NOTIFY_INFORMATION;

//
// Define segement buffer structure for scatter/gather read/write.
//

type
  PFILE_SEGMENT_ELEMENT = ^FILE_SEGMENT_ELEMENT;
  {$EXTERNALSYM PFILE_SEGMENT_ELEMENT}
  _FILE_SEGMENT_ELEMENT = record
    case Integer of
      0: (Buffer: PVOID64);
      1: (Alignment: ULONGLONG);
  end;
  {$EXTERNALSYM _FILE_SEGMENT_ELEMENT}
  FILE_SEGMENT_ELEMENT = _FILE_SEGMENT_ELEMENT;
  {$EXTERNALSYM FILE_SEGMENT_ELEMENT}
  TFileSegmentElement = FILE_SEGMENT_ELEMENT;
  PFileSegmentElement = PFILE_SEGMENT_ELEMENT;

//
// The reparse GUID structure is used by all 3rd party layered drivers to
// store data in a reparse point. For non-Microsoft tags, The GUID field
// cannot be GUID_NULL.
// The constraints on reparse tags are defined below.
// Microsoft tags can also be used with this format of the reparse point buffer.
//
  TGenericReparseBuffer = record
    DataBuffer: array [0..0] of BYTE;
  end;

  PREPARSE_GUID_DATA_BUFFER = ^REPARSE_GUID_DATA_BUFFER;
  {$EXTERNALSYM PREPARSE_GUID_DATA_BUFFER}
  _REPARSE_GUID_DATA_BUFFER = record
    ReparseTag: DWORD;
    ReparseDataLength: WORD;
    Reserved: WORD;
    ReparseGuid: GUID;
    GenericReparseBuffer: TGenericReparseBuffer;
  end;
  {$EXTERNALSYM _REPARSE_GUID_DATA_BUFFER}
  REPARSE_GUID_DATA_BUFFER = _REPARSE_GUID_DATA_BUFFER;
  {$EXTERNALSYM REPARSE_GUID_DATA_BUFFER}
  TReparseGuidDataBuffer = REPARSE_GUID_DATA_BUFFER;
  PReparseGuidDataBuffer = PREPARSE_GUID_DATA_BUFFER;

const
  REPARSE_GUID_DATA_BUFFER_HEADER_SIZE = 24;
  {$EXTERNALSYM REPARSE_GUID_DATA_BUFFER_HEADER_SIZE}
//
// Maximum allowed size of the reparse data.
//

const
  MAXIMUM_REPARSE_DATA_BUFFER_SIZE = 16 * 1024;
  {$EXTERNALSYM MAXIMUM_REPARSE_DATA_BUFFER_SIZE}

//
// Predefined reparse tags.
// These tags need to avoid conflicting with IO_REMOUNT defined in ntos\inc\io.h
//

  IO_REPARSE_TAG_RESERVED_ZERO = 0;
  {$EXTERNALSYM IO_REPARSE_TAG_RESERVED_ZERO}
  IO_REPARSE_TAG_RESERVED_ONE  = 1;
  {$EXTERNALSYM IO_REPARSE_TAG_RESERVED_ONE}

//
// The value of the following constant needs to satisfy the following conditions:
//  (1) Be at least as large as the largest of the reserved tags.
//  (2) Be strictly smaller than all the tags in use.
//

  IO_REPARSE_TAG_RESERVED_RANGE = IO_REPARSE_TAG_RESERVED_ONE;
  {$EXTERNALSYM IO_REPARSE_TAG_RESERVED_RANGE}

//
// The reparse tags are a DWORD. The 32 bits are laid out as follows:
//
//   3 3 2 2 2 2 2 2 2 2 2 2 1 1 1 1 1 1 1 1 1 1
//   1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
//  +-+-+-+-+-----------------------+-------------------------------+
//  |M|R|N|R|     Reserved bits     |       Reparse Tag Value       |
//  +-+-+-+-+-----------------------+-------------------------------+
//
// M is the Microsoft bit. When set to 1, it denotes a tag owned by Microsoft.
//   All ISVs must use a tag with a 0 in this position.
//   Note: If a Microsoft tag is used by non-Microsoft software, the
//   behavior is not defined.
//
// R is reserved.  Must be zero for non-Microsoft tags.
//
// N is name surrogate. When set to 1, the file represents another named
//   entity in the system.
//
// The M and N bits are OR-able.
// The following macros check for the M and N bit values:
//

//
// Macro to determine whether a reparse point tag corresponds to a tag
// owned by Microsoft.
//

function IsReparseTagMicrosoft(Tag: ULONG): Boolean;
{$EXTERNALSYM IsReparseTagMicrosoft}

//
// Macro to determine whether a reparse point tag corresponds to a file
// that is to be displayed with the slow icon overlay.
//

function IsReparseTagHighLatency(Tag: ULONG): Boolean;
{$EXTERNALSYM IsReparseTagHighLatency}

//
// Macro to determine whether a reparse point tag is a name surrogate
//

function IsReparseTagNameSurrogate(Tag: ULONG): Boolean;
{$EXTERNALSYM IsReparseTagNameSurrogate}

const
  IO_REPARSE_TAG_MOUNT_POINT = DWORD($A0000003);
  {$EXTERNALSYM IO_REPARSE_TAG_MOUNT_POINT}
  IO_REPARSE_TAG_HSM         = DWORD($C0000004);
  {$EXTERNALSYM IO_REPARSE_TAG_HSM}
  IO_REPARSE_TAG_HSM2        = DWORD($80000006);
  {$EXTERNALSYM IO_REPARSE_TAG_HSM2}
  IO_REPARSE_TAG_SIS         = DWORD($80000007);
  {$EXTERNALSYM IO_REPARSE_TAG_SIS}
  IO_REPARSE_TAG_WIM         = DWORD($80000008);
  {$EXTERNALSYM IO_REPARSE_TAG_WIM}
  IO_REPARSE_TAG_CSV         = DWORD($80000009);
  {$EXTERNALSYM IO_REPARSE_TAG_CSV}
  IO_REPARSE_TAG_DFS         = DWORD($8000000A);
  {$EXTERNALSYM IO_REPARSE_TAG_DFS}
  IO_REPARSE_TAG_FILTER_MANAGER = DWORD($8000000B);
  {$EXTERNALSYM IO_REPARSE_TAG_FILTER_MANAGER}
  IO_REPARSE_TAG_SYMLINK     = DWORD($A000000C);
  {$EXTERNALSYM IO_REPARSE_TAG_SYMLINK}
  IO_REPARSE_TAG_DFSR        = DWORD($80000012);
  {$EXTERNALSYM IO_REPARSE_TAG_DFSR}

//
// I/O Completion Specific Access Rights.
//

  IO_COMPLETION_MODIFY_STATE = $0002;
  {$EXTERNALSYM IO_COMPLETION_MODIFY_STATE}
  IO_COMPLETION_ALL_ACCESS   = DWORD(STANDARD_RIGHTS_REQUIRED or SYNCHRONIZE or $3);
  {$EXTERNALSYM IO_COMPLETION_ALL_ACCESS}

//
// Object Manager Symbolic Link Specific Access Rights.
//

  DUPLICATE_CLOSE_SOURCE     = $00000001;
  {$EXTERNALSYM DUPLICATE_CLOSE_SOURCE}
  DUPLICATE_SAME_ACCESS      = $00000002;
  {$EXTERNALSYM DUPLICATE_SAME_ACCESS}

//
// =========================================
// Define GUIDs which represent well-known power schemes
// =========================================
//

//
// Maximum Power Savings - indicates that very aggressive power savings measures will be used to help
//                         stretch battery life.
//
  {$EXTERNALSYM GUID_MAX_POWER_SAVINGS}
  GUID_MAX_POWER_SAVINGS = '{a1841308-3541-4fab-bc81-f71556f20b4a}';

//
// No Power Savings - indicates that almost no power savings measures will be used.
//
  {$EXTERNALSYM GUID_MIN_POWER_SAVINGS}
  GUID_MIN_POWER_SAVINGS = '{8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c}';

//
// Typical Power Savings - indicates that fairly aggressive power savings measures will be used.
//
  {$EXTERNALSYM GUID_TYPICAL_POWER_SAVINGS}
  GUID_TYPICAL_POWER_SAVINGS = '{381b4222-f694-41f0-9685-ff5bb260df2e}';

//
// This is a special GUID that represents "no subgroup" of settings.  That is, it indicates
// that settings that are in the root of the power policy hierarchy as opposed to settings
// that are buried under a subgroup of settings.  This should be used when querying for
// power settings that may not fall into a subgroup.
//
  {$EXTERNALSYM NO_SUBGROUP_GUID}
  NO_SUBGROUP_GUID = '{FEA3413E-7E05-4911-9A71-700331F1C294}';

//
// This is a special GUID that represents "every power scheme".  That is, it indicates
// that any write to this power scheme should be reflected to every scheme present.
// This allows users to write a single setting once and have it apply to all schemes.  They
// can then apply custom settings to specific power schemes that they care about.
//
  {$EXTERNALSYM ALL_POWERSCHEMES_GUID}
  ALL_POWERSCHEMES_GUID = '{68A1E95E-13EA-41E1-8011-0C496CA490B0}';

//
// This is a special GUID that represents a 'personality' that each power scheme will have.
// In other words, each power scheme will have this key indicating "I'm most like *this* base
// power scheme."  This individual setting will have one of three settings:
// GUID_MAX_POWER_SAVINGS
// GUID_MIN_POWER_SAVINGS
// GUID_TYPICAL_POWER_SAVINGS
//
// This allows several features:
// 1. Drivers and applications can register for notification of this GUID.  So when this power
//    scheme is activiated, this GUID's setting will be sent across the system and drivers/applications
//    can see "GUID_MAX_POWER_SAVINGS" which will tell them in a generic fashion "get real aggressive
//    about conserving power".
// 2. UserB may install a driver or application which creates power settings, and UserB may modify
//    those power settings.  Now UserA logs in.  How does he see those settings?  They simply don't
//    exist in his private power key.  Well they do exist over in the system power key.  When we
//    enumerate all the power settings in this system power key and don't find a corresponding entry
//    in the user's private power key, then we can go look at this "personality" key in the users
//    power scheme.  We can then go get a default value for the power setting, depending on which
//    "personality" power scheme is being operated on.  Here's an example:
//    A. UserB installs an application that creates a power setting Seetting1
//    B. UserB changes Setting1 to have a value of 50 because that's one of the possible settings
//       available for setting1.
//    C. UserB logs out
//    D. UserA logs in and his active power scheme is some custom scheme that was derived from
//       the GUID_TYPICAL_POWER_SAVINGS.  But remember that UserA has no setting1 in his
//       private power key.
//    E. When activating UserA's selected power scheme, all power settings in the system power key will
//       be enumerated (including Setting1).
//    F. The power manager will see that UserA has no Setting1 power setting in his private power scheme.
//    G. The power manager will query UserA's power scheme for its personality and retrieve
//       GUID_TYPICAL_POWER_SAVINGS.
//    H. The power manager then looks in Setting1 in the system power key and looks in its set of default
//       values for the corresponding value for GUID_TYPICAL_POWER_SAVINGS power schemes.
//    I. This derived power setting is applied.
  {$EXTERNALSYM GUID_POWERSCHEME_PERSONALITY}
  GUID_POWERSCHEME_PERSONALITY = '{245D8541-3943-4422-B025-13A784F679B7}';

//
// Define a special GUID which will be used to define the active power scheme.
// User will register for this power setting GUID, and when the active power
// scheme changes, they'll get a callback where the payload is the GUID
// representing the active powerscheme.
//
  {$EXTERNALSYM GUID_ACTIVE_POWERSCHEME}
  GUID_ACTIVE_POWERSCHEME = '{31F9F286-5084-42FE-B720-2B0264993763}';

//
// =========================================
// Define GUIDs which represent well-known power settings
// =========================================
//

// Video settings
// --------------
//
// Specifies the subgroup which will contain all of the video
// settings for a single policy.
//
  {$EXTERNALSYM GUID_VIDEO_SUBGROUP}
  GUID_VIDEO_SUBGROUP = '{7516B95F-F776-4464-8C53-06167F40CC99}';

//
// Specifies (in seconds) how long we wait after the last user input has been
// recieved before we power off the video.
//
  {$EXTERNALSYM GUID_VIDEO_POWERDOWN_TIMEOUT}
  GUID_VIDEO_POWERDOWN_TIMEOUT = '{3C0BC021-C8A8-4E07-A973-6B14CBCB2B7E}';

//
// Specifies whether adaptive display dimming is turned on or off.
//
  {$EXTERNALSYM GUID_VIDEO_ANNOYANCE_TIMEOUT}
  GUID_VIDEO_ANNOYANCE_TIMEOUT = '{82DBCF2D-CD67-40C5-BFDC-9F1A5CCD4663}';

//
// Specifies how much adaptive dim time out will be increased by.
//
  {$EXTERNALSYM GUID_VIDEO_ADAPTIVE_PERCENT_INCREASE}
  GUID_VIDEO_ADAPTIVE_PERCENT_INCREASE = '{EED904DF-B142-4183-B10B-5A1197A37864}';

//
// Specifies (in seconds) how long we wait after the last user input has been
// recieved before we dim the video.
//
  {$EXTERNALSYM GUID_VIDEO_DIM_TIMEOUT}
  GUID_VIDEO_DIM_TIMEOUT = '{17aaa29b-8b43-4b94-aafe-35f64daaf1ee}';

//
// Specifies if the operating system should use adaptive timers (based on
// previous behavior) to power down the video,
//
  {$EXTERNALSYM GUID_VIDEO_ADAPTIVE_POWERDOWN}
  GUID_VIDEO_ADAPTIVE_POWERDOWN = '{90959D22-D6A1-49B9-AF93-BCE885AD335B}';

//
// Specifies if the monitor is currently being powered or not.
//
  {$EXTERNALSYM GUID_MONITOR_POWER_ON}
  GUID_MONITOR_POWER_ON = '{02731015-4510-4526-99E6-E5A17EBD1AEA}';

//
// Monitor brightness policy when in normal state
  {$EXTERNALSYM GUID_DEVICE_POWER_POLICY_VIDEO_BRIGHTNESS}
  GUID_DEVICE_POWER_POLICY_VIDEO_BRIGHTNESS = '{aded5e82L-b909-4619-9949-f5d71dac0bcb}';

//
//
// Monitor brightness policy when in dim state
  {$EXTERNALSYM GUID_DEVICE_POWER_POLICY_VIDEO_DIM_BRIGHTNESS}
  GUID_DEVICE_POWER_POLICY_VIDEO_DIM_BRIGHTNESS = '{f1fbfde2-a960-4165-9f88-50667911ce96}';

//
// Current Monitor brightness
  {$EXTERNALSYM GUID_VIDEO_CURRENT_MONITOR_BRIGHTNESS}
  GUID_VIDEO_CURRENT_MONITOR_BRIGHTNESS = '{8ffee2c6-2d01-46be-adb9-398addc5b4ff}';


//
// Specifies if the operating system should use ambient light sensor to change
// disply brightness adatively.
  {$EXTERNALSYM GUID_VIDEO_ADAPTIVE_DISPLAY_BRIGHTNESS}
  GUID_VIDEO_ADAPTIVE_DISPLAY_BRIGHTNESS = '{FBD9AA66-9553-4097-BA44-ED6E9D65EAB8}';

//
// Specifies a change in the session's display state.
//
// N.B. This is a session-specific notification, sent only to interactive
//      session registrants. Session 0 and kernel mode consumers do not receive
//      this notification.
  {$EXTERNALSYM GUID_SESSION_DISPLAY_STATE}
  GUID_SESSION_DISPLAY_STATE = '{73A5E93A-5BB1-4F93-895B-DBD0DA855967}';

//
// Specifies a change in the current monitor's display state.
//
  {$EXTERNALSYM GUID_CONSOLE_DISPLAY_STATE}
  GUID_CONSOLE_DISPLAY_STATE = '{6fe69556-704a-47a0-8f24-c28d936fda47}';

//
// Defines a guid for enabling/disabling the ability to create display required
// power requests.
//
//
  {$EXTERNALSYM GUID_ALLOW_DISPLAY_REQUIRED}
  GUID_ALLOW_DISPLAY_REQUIRED = '{A9CEB8DA-CD46-44FB-A98B-02AF69DE4623}';

// Harddisk settings
// -----------------
//
// Specifies the subgroup which will contain all of the harddisk
// settings for a single policy.
//
  {$EXTERNALSYM GUID_DISK_SUBGROUP}
  GUID_DISK_SUBGROUP = '{0012EE47-9041-4B5D-9B77-535FBA8B1442}';

//
// Specifies (in seconds) how long we wait after the last disk access
// before we power off the disk.
//
  {$EXTERNALSYM GUID_DISK_POWERDOWN_TIMEOUT}
  GUID_DISK_POWERDOWN_TIMEOUT = '{6738E2C4-E8A5-4A42-B16A-E040E769756E}';

//
// Specifies the amount of contiguous disk activity time to ignore when
// calculating disk idleness.
//
// 80e3c60e-bb94-4ad8-bbe0-0d3195efc663
//

  {$EXTERNALSYM GUID_DISK_BURST_IGNORE_THRESHOLD}
  GUID_DISK_BURST_IGNORE_THRESHOLD = '{80e3c60e-bb94-4ad8-bbe0-0d3195efc663}';

//
// Specifies if the operating system should use adaptive timers (based on
// previous behavior) to power down the disk,
//
  {$EXTERNALSYM GUID_DISK_ADAPTIVE_POWERDOWN}
  GUID_DISK_ADAPTIVE_POWERDOWN = '{396A32E1-499A-40B2-9124-A96AFE707667}';

// System sleep settings
// ---------------------
//
// Specifies the subgroup which will contain all of the sleep
// settings for a single policy.
//
  {$EXTERNALSYM GUID_SLEEP_SUBGROUP}
  GUID_SLEEP_SUBGROUP = '{238C9FA8-0AAD-41ED-83F4-97BE242C8F20}';

//
// Specifies an idle treshold percentage (0-100). The system must be this idle
// over a period of time in order to idle to sleep.
//
// N.B. DEPRECATED IN WINDOWS 6.1
//
  {$EXTERNALSYM GUID_SLEEP_IDLE_THRESHOLD}
  GUID_SLEEP_IDLE_THRESHOLD = '{81cd32e0-7833-44f3-8737-7081f38d1f70}' {$IFDEF WIN7_UP} deprecated {$ENDIF};

//
// Specifies (in seconds) how long we wait after the system is deemed
// "idle" before moving to standby (S1, S2 or S3).
//
  {$EXTERNALSYM GUID_STANDBY_TIMEOUT}
  GUID_STANDBY_TIMEOUT = '{29F6C1DB-86DA-48C5-9FDB-F2B67B1F44DA}';

//
// Specifies (in seconds) how long the system should go back to sleep after
// waking unattended. 0 indicates that the standard standby/hibernate idle
// policy should be used instead.
//
//
  {$EXTERNALSYM GUID_UNATTEND_SLEEP_TIMEOUT}
  GUID_UNATTEND_SLEEP_TIMEOUT = '{7bc4a2f9-d8fc-4469-b07b-33eb785aaca0}';

//
// Specifies (in seconds) how long we wait after the system is deemed
// "idle" before moving to hibernate (S4).
//
  {$EXTERNALSYM GUID_HIBERNATE_TIMEOUT}
  GUID_HIBERNATE_TIMEOUT = '{9D7815A6-7EE4-497E-8888-515A05F02364}';

//
// Specifies whether or not Fast S4 should be enabled if the system supports it
//
  {$EXTERNALSYM GUID_HIBERNATE_FASTS4_POLICY}
  GUID_HIBERNATE_FASTS4_POLICY = '{94AC6D29-73CE-41A6-809F-6363BA21B47E}';

//
// Define a GUID for controlling the criticality of sleep state transitions.
// Critical sleep transitions do not query applications, services or drivers
// before transitioning the platform to a sleep state.
//
  {$EXTERNALSYM GUID_CRITICAL_POWER_TRANSITION}
  GUID_CRITICAL_POWER_TRANSITION = '{B7A27025-E569-46c2-A504-2B96CAD225A1}';

//
// Specifies if the system is entering or exiting 'away mode'.
//
  {$EXTERNALSYM GUID_SYSTEM_AWAYMODE}
  GUID_SYSTEM_AWAYMODE = '{98A7F580-01F7-48AA-9C0F-44352C29E5C0}';

// Specify whether away mode is allowed
//
  {$EXTERNALSYM GUID_ALLOW_AWAYMODE}
  GUID_ALLOW_AWAYMODE = '{25DFA149-5DD1-4736-B5AB-E8A37B5B8187}';

//
// Defines a guid for enabling/disabling standby (S1-S3) states. This does not
// affect hibernation (S4).
//
  {$EXTERNALSYM GUID_ALLOW_STANDBY_STATES}
  GUID_ALLOW_STANDBY_STATES = '{abfc2519-3608-4c2a-94ea-171b0ed546ab}';

//
// Defines a guid for enabling/disabling the ability to wake via RTC.
//
  {$EXTERNALSYM GUID_ALLOW_RTC_WAKE}
  GUID_ALLOW_RTC_WAKE = '{BD3B718A-0680-4D9D-8AB2-E1D2B4AC806D}';

//
// Defines a guid for enabling/disabling the ability to create system required
// power requests.
//
  {$EXTERNALSYM GUID_ALLOW_SYSTEM_REQUIRED}
  GUID_ALLOW_SYSTEM_REQUIRED = '{A4B195F5-8225-47D8-8012-9D41369786E2}';

// System button actions
// ---------------------
//
//
// Specifies the subgroup which will contain all of the system button
// settings for a single policy.
//
  {$EXTERNALSYM GUID_SYSTEM_BUTTON_SUBGROUP}
  GUID_SYSTEM_BUTTON_SUBGROUP = '{4F971E89-EEBD-4455-A8DE-9E59040E7347}';

// Specifies (in a POWER_ACTION_POLICY structure) the appropriate action to
// take when the system power button is pressed.
//
  {$EXTERNALSYM GUID_POWERBUTTON_ACTION}
  GUID_POWERBUTTON_ACTION = '{7648EFA3-DD9C-4E3E-B566-50F929386280}';
  {$EXTERNALSYM GUID_POWERBUTTON_ACTION_FLAGS}
  GUID_POWERBUTTON_ACTION_FLAGS = '{857E7FAC-034B-4704-ABB1-BCA54AA31478}';

//
// Specifies (in a POWER_ACTION_POLICY structure) the appropriate action to
// take when the system sleep button is pressed.
//
  {$EXTERNALSYM GUID_SLEEPBUTTON_ACTION}
  GUID_SLEEPBUTTON_ACTION = '{96996BC0-AD50-47EC-923B-6F41874DD9EB}';
  {$EXTERNALSYM GUID_SLEEPBUTTON_ACTION_FLAGS}
  GUID_SLEEPBUTTON_ACTION_FLAGS = '{2A160AB1-B69D-4743-B718-BF1441D5E493}';

//
// Specifies (in a POWER_ACTION_POLICY structure) the appropriate action to
// take when the system sleep button is pressed.
//
  {$EXTERNALSYM GUID_USERINTERFACEBUTTON_ACTION}
  GUID_USERINTERFACEBUTTON_ACTION = '{A7066653-8D6C-40A8-910E-A1F54B84C7E5}';

//
// Specifies (in a POWER_ACTION_POLICY structure) the appropriate action to
// take when the system lid is closed.
//
  {$EXTERNALSYM GUID_LIDCLOSE_ACTION}
  GUID_LIDCLOSE_ACTION = '{5CA83367-6E45-459F-A27B-476B1D01C936}';
  {$EXTERNALSYM GUID_LIDCLOSE_ACTION_FLAGS}
  GUID_LIDCLOSE_ACTION_FLAGS = '{97E969AC-0D6C-4D08-927C-D7BD7AD7857B}';
  {$EXTERNALSYM GUID_LIDOPEN_POWERSTATE}
  GUID_LIDOPEN_POWERSTATE = '{99FF10E7-23B1-4C07-A9D1-5C3206D741B4}';


// Battery Discharge Settings
// --------------------------
//
// Specifies the subgroup which will contain all of the battery discharge
// settings for a single policy.
//
  {$EXTERNALSYM GUID_BATTERY_SUBGROUP}
  GUID_BATTERY_SUBGROUP = '{E73A048D-BF27-4F12-9731-8B2076E8891F}';

//
// 4 battery discharge alarm settings.
//
// GUID_BATTERY_DISCHARGE_ACTION_x - This is the action to take.  It is a value
//                                   of type POWER_ACTION
// GUID_BATTERY_DISCHARGE_LEVEL_x  - This is the battery level (%)
// GUID_BATTERY_DISCHARGE_FLAGS_x  - Flags defined below:
//                                   POWER_ACTION_POLICY->EventCode flags
//                                   BATTERY_DISCHARGE_FLAGS_EVENTCODE_MASK
//                                   BATTERY_DISCHARGE_FLAGS_ENABLE
  {$EXTERNALSYM GUID_BATTERY_DISCHARGE_ACTION_0}
  GUID_BATTERY_DISCHARGE_ACTION_0 = '{637EA02F-BBCB-4015-8E2C-A1C7B9C0B546}';
  {$EXTERNALSYM GUID_BATTERY_DISCHARGE_LEVEL_0}
  GUID_BATTERY_DISCHARGE_LEVEL_0 = '{9A66D8D7-4FF7-4EF9-B5A2-5A326CA2A469}';
  {$EXTERNALSYM GUID_BATTERY_DISCHARGE_FLAGS_0}
  GUID_BATTERY_DISCHARGE_FLAGS_0 = '{5dbb7c9f-38e9-40d2-9749-4f8a0e9f640f}';

  {$EXTERNALSYM GUID_BATTERY_DISCHARGE_ACTION_1}
  GUID_BATTERY_DISCHARGE_ACTION_1 = '{D8742DCB-3E6A-4B3C-B3FE-374623CDCF06}';
  {$EXTERNALSYM GUID_BATTERY_DISCHARGE_LEVEL_1}
  GUID_BATTERY_DISCHARGE_LEVEL_1 = '{8183BA9A-E910-48DA-8769-14AE6DC1170A}';
  {$EXTERNALSYM GUID_BATTERY_DISCHARGE_FLAGS_1}
  GUID_BATTERY_DISCHARGE_FLAGS_1 = '{bcded951-187b-4d05-bccc-f7e51960c258}';

  {$EXTERNALSYM GUID_BATTERY_DISCHARGE_ACTION_2}
  GUID_BATTERY_DISCHARGE_ACTION_2 = '{421CBA38-1A8E-4881-AC89-E33A8B04ECE4}';
  {$EXTERNALSYM GUID_BATTERY_DISCHARGE_LEVEL_2}
  GUID_BATTERY_DISCHARGE_LEVEL_2 = '{07A07CA2-ADAF-40D7-B077-533AADED1BFA}';
  {$EXTERNALSYM GUID_BATTERY_DISCHARGE_FLAGS_2}
  GUID_BATTERY_DISCHARGE_FLAGS_2 = '{7fd2f0c4-feb7-4da3-8117-e3fbedc46582}';

  {$EXTERNALSYM GUID_BATTERY_DISCHARGE_ACTION_3}
  GUID_BATTERY_DISCHARGE_ACTION_3 = '{80472613-9780-455E-B308-72D3003CF2F8}';
  {$EXTERNALSYM GUID_BATTERY_DISCHARGE_LEVEL_3}
  GUID_BATTERY_DISCHARGE_LEVEL_3 = '{58AFD5A6-C2DD-47D2-9FBF-EF70CC5C5965}';
  {$EXTERNALSYM GUID_BATTERY_DISCHARGE_FLAGS_3}
  GUID_BATTERY_DISCHARGE_FLAGS_3 = '{73613ccf-dbfa-4279-8356-4935f6bf62f3}';

// Processor power settings
// ------------------------
//

// Specifies the subgroup which will contain all of the processor
// settings for a single policy.
//
  {$EXTERNALSYM GUID_PROCESSOR_SETTINGS_SUBGROUP}
  GUID_PROCESSOR_SETTINGS_SUBGROUP = '{54533251-82BE-4824-96C1-47B60B740D00}';

//
// Specifies various attributes that control processor performance/throttle
// states.
//
  {$EXTERNALSYM GUID_PROCESSOR_THROTTLE_POLICY}
  GUID_PROCESSOR_THROTTLE_POLICY = '{57027304-4AF6-4104-9260-E3D95248FC36}';

  {$EXTERNALSYM PERFSTATE_POLICY_CHANGE_IDEAL}
  PERFSTATE_POLICY_CHANGE_IDEAL       = 0;
  {$EXTERNALSYM PERFSTATE_POLICY_CHANGE_SINGLE}
  PERFSTATE_POLICY_CHANGE_SINGLE      = 1;
  {$EXTERNALSYM PERFSTATE_POLICY_CHANGE_ROCKET}
  PERFSTATE_POLICY_CHANGE_ROCKET      = 2;
  {$EXTERNALSYM PERFSTATE_POLICY_CHANGE_MAX}
  PERFSTATE_POLICY_CHANGE_MAX         = PERFSTATE_POLICY_CHANGE_ROCKET;

//
// Specifies a percentage (between 0 and 100) that the processor frequency
// should never go above.  For example, if this value is set to 80, then
// the processor frequency will never be throttled above 80 percent of its
// maximum frequency by the system.
//
  {$EXTERNALSYM GUID_PROCESSOR_THROTTLE_MAXIMUM}
  GUID_PROCESSOR_THROTTLE_MAXIMUM = '{BC5038F7-23E0-4960-96DA-33ABAF5935EC}';

//
// Specifies a percentage (between 0 and 100) that the processor frequency
// should not drop below.  For example, if this value is set to 50, then the
// processor frequency will never be throttled below 50 percent of its
// maximum frequency by the system.
//
  {$EXTERNALSYM GUID_PROCESSOR_THROTTLE_MINIMUM}
  GUID_PROCESSOR_THROTTLE_MINIMUM = '{893DEE8E-2BEF-41E0-89C6-B55D0929964C}';

//
// Specifies whether throttle states are allowed to be used even when
// performance states are available.
//
  {$EXTERNALSYM GUID_PROCESSOR_ALLOW_THROTTLING}
  GUID_PROCESSOR_ALLOW_THROTTLING = '{3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb}';

//
// Specifies processor power settings for CState policy data
//
  {$EXTERNALSYM GUID_PROCESSOR_IDLESTATE_POLICY}
  GUID_PROCESSOR_IDLESTATE_POLICY = '{68F262A7-F621-4069-B9A5-4874169BE23C}';

//
// Specifies processor power settings for PerfState policy data
//
  {$EXTERNALSYM GUID_PROCESSOR_PERFSTATE_POLICY}
  GUID_PROCESSOR_PERFSTATE_POLICY = '{BBDC3814-18E9-4463-8A55-D197327C45C0}';

//
// Specifies the increase busy percentage threshold that must be met before
// increasing the processor performance state.
//
//
  {$EXTERNALSYM GUID_PROCESSOR_PERF_INCREASE_THRESHOLD}
  GUID_PROCESSOR_PERF_INCREASE_THRESHOLD = '{06cadf0e-64ed-448a-8927-ce7bf90eb35d}';

//
// Specifies the decrease busy percentage threshold that must be met before
// decreasing the processor performance state.
//
//
  {$EXTERNALSYM GUID_PROCESSOR_PERF_DECREASE_THRESHOLD}
  GUID_PROCESSOR_PERF_DECREASE_THRESHOLD = '{12a0ab44-fe28-4fa9-b3bd-4b64f44960a6}';

//
// Specifies, either as ideal, single or rocket, how aggressive performance
// states should be selected when increasing the processor performance state.
//
//
  {$EXTERNALSYM GUID_PROCESSOR_PERF_INCREASE_POLICY}
  GUID_PROCESSOR_PERF_INCREASE_POLICY = '{465E1F50-B610-473a-AB58-00D1077DC418}';

//
// Specifies, either as ideal, single or rocket, how aggressive performance
// states should be selected when decreasing the processor performance state.
//
//
  {$EXTERNALSYM GUID_PROCESSOR_PERF_DECREASE_POLICY}
  GUID_PROCESSOR_PERF_DECREASE_POLICY = '{40FBEFC7-2E9D-4d25-A185-0CFD8574BAC6}';

//
// Specifies, in milliseconds, the minimum amount of time that must elapse after
// the last processor performance state change before increasing the processor
// performance state.
//
  {$EXTERNALSYM GUID_PROCESSOR_PERF_INCREASE_TIME}
  GUID_PROCESSOR_PERF_INCREASE_TIME = '{984CF492-3BED-4488-A8F9-4286C97BF5AA}';

//
// Specifies, in milliseconds, the minimum amount of time that must elapse after
// the last processor performance state change before increasing the processor
// performance state.
//
  {$EXTERNALSYM GUID_PROCESSOR_PERF_DECREASE_TIME}
  GUID_PROCESSOR_PERF_DECREASE_TIME = '{D8EDEB9B-95CF-4f95-A73C-B061973693C8}';

//
// Specifies the time, in milliseconds, that must expire before considering
// a change in the processor performance states or parked core set.
//
  {$EXTERNALSYM GUID_PROCESSOR_PERF_TIME_CHECK}
  GUID_PROCESSOR_PERF_TIME_CHECK = '{4D2B0152-7D5C-498b-88E2-34345392A2C5}';

//
// Specifies whether a processor may opportunistically increase frequency above
// the maximum when operating contitions allow it to do so safely.
//
  {$EXTERNALSYM GUID_PROCESSOR_PERF_BOOST_POLICY}
  GUID_PROCESSOR_PERF_BOOST_POLICY = '{45BCC044-D885-43e2-8605-EE0EC6E96B59}';

  {$EXTERNALSYM PROCESSOR_PERF_BOOST_POLICY_DISABLED}
  PROCESSOR_PERF_BOOST_POLICY_DISABLED= 0;
  {$EXTERNALSYM PROCESSOR_PERF_BOOST_POLICY_MAX}
  PROCESSOR_PERF_BOOST_POLICY_MAX     = 100;

//
// Specifies if idle state promotion and demotion values should be scaled based
// on the current peformance state.
//
  {$EXTERNALSYM GUID_PROCESSOR_IDLE_ALLOW_SCALING}
  GUID_PROCESSOR_IDLE_ALLOW_SCALING = '{6C2993B0-8F48-481f-BCC6-00DD2742AA06}';

//
// Specifies if idle states should be disabled.
//
  {$EXTERNALSYM GUID_PROCESSOR_IDLE_DISABLE}
  GUID_PROCESSOR_IDLE_DISABLE = '{5D76A2CA-E8C0-402f-A133-2158492D58AD}';

//
// Specifies the time that elapsed since the last idle state promotion or
// demotion before idle states may be promoted or demoted again (in
// microseconds).
//
  {$EXTERNALSYM GUID_PROCESSOR_IDLE_TIME_CHECK}
  GUID_PROCESSOR_IDLE_TIME_CHECK = '{C4581C31-89AB-4597-8E2B-9C9CAB440E6B}';


//
// Specifies the upper busy threshold that must be met before demoting the
// processor to a lighter idle state (in percentage).
//
  {$EXTERNALSYM GUID_PROCESSOR_IDLE_DEMOTE_THRESHOLD}
  GUID_PROCESSOR_IDLE_DEMOTE_THRESHOLD = '{4B92D758-5A24-4851-A470-815D78AEE119}';

//
// Specifies the lower busy threshold that must be met before promoting the
// processor to a deeper idle state (in percentage).
//
  {$EXTERNALSYM GUID_PROCESSOR_IDLE_PROMOTE_THRESHOLD}
  GUID_PROCESSOR_IDLE_PROMOTE_THRESHOLD = '{7B224883-B3CC-4d79-819F-8374152CBE7C}';

//
// Specifies the utilization threshold in percent that must be crossed in order to un-park cores.
//
  {$EXTERNALSYM GUID_PROCESSOR_CORE_PARKING_INCREASE_THRESHOLD}
  GUID_PROCESSOR_CORE_PARKING_INCREASE_THRESHOLD = '{df142941-20f3-4edf-9a4a-9c83d3d717d1}';

//
// Specifies the utilization threshold in percent that must be crossed in order to park cores.
//
  {$EXTERNALSYM GUID_PROCESSOR_CORE_PARKING_DECREASE_THRESHOLD}
  GUID_PROCESSOR_CORE_PARKING_DECREASE_THRESHOLD = '{68dd2f27-a4ce-4e11-8487-3794e4135dfa}';

//
// Specifies, either as ideal, single or rocket, how aggressive core parking is when cores must be unparked.
//
  {$EXTERNALSYM GUID_PROCESSOR_CORE_PARKING_INCREASE_POLICY}
  GUID_PROCESSOR_CORE_PARKING_INCREASE_POLICY = '{c7be0679-2817-4d69-9d02-519a537ed0c6}';

  {$EXTERNALSYM CORE_PARKING_POLICY_CHANGE_IDEAL}
  CORE_PARKING_POLICY_CHANGE_IDEAL    = 0;
  {$EXTERNALSYM CORE_PARKING_POLICY_CHANGE_SINGLE}
  CORE_PARKING_POLICY_CHANGE_SINGLE   = 1;
  {$EXTERNALSYM CORE_PARKING_POLICY_CHANGE_ROCKET}
  CORE_PARKING_POLICY_CHANGE_ROCKET   = 2;
  {$EXTERNALSYM CORE_PARKING_POLICY_CHANGE_MAX}
  CORE_PARKING_POLICY_CHANGE_MAX      = CORE_PARKING_POLICY_CHANGE_ROCKET;

//
// Specifies, either as ideal, single or rocket, how aggressive core parking is when cores must be parked.
//
  {$EXTERNALSYM GUID_PROCESSOR_CORE_PARKING_DECREASE_POLICY}
  GUID_PROCESSOR_CORE_PARKING_DECREASE_POLICY = '{71021b41-c749-4d21-be74-a00f335d582b}';

//
// Specifies, on a per processor group basis, the maximum number of cores that can be kept unparked.
//
  {$EXTERNALSYM GUID_PROCESSOR_CORE_PARKING_MAX_CORES}
  GUID_PROCESSOR_CORE_PARKING_MAX_CORES = '{ea062031-0e34-4ff1-9b6d-eb1059334028}';

//
// Specifies, on a per processor group basis, the minimum number of cores that must be kept unparked.
//
  {$EXTERNALSYM GUID_PROCESSOR_CORE_PARKING_MIN_CORES}
  GUID_PROCESSOR_CORE_PARKING_MIN_CORES = '{0cc5b647-c1df-4637-891a-dec35c318583}';

//
// Specifies, in milliseconds, the minimum amount of time a core must be parked before it can be unparked.
//
  {$EXTERNALSYM GUID_PROCESSOR_CORE_PARKING_INCREASE_TIME}
  GUID_PROCESSOR_CORE_PARKING_INCREASE_TIME = '{2ddd5a84-5a71-437e-912a-db0b8c788732}';

//
// Specifies, in milliseconds, the minimum amount of time a core must be unparked before it can be parked.
//
  {$EXTERNALSYM GUID_PROCESSOR_CORE_PARKING_DECREASE_TIME}
  GUID_PROCESSOR_CORE_PARKING_DECREASE_TIME = '{dfd10d17-d5eb-45dd-877a-9a34ddd15c82}';

//
// Specifies the factor by which to decrease affinity history on each core after each check.
//
  {$EXTERNALSYM GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_DECREASE_FACTOR}
  GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_DECREASE_FACTOR = '{8f7b45e3-c393-480a-878c-f67ac3d07082}';

//
// Specifies the threshold above which a core is considered to have had significant affinitized work scheduled to it while parked.
//
  {$EXTERNALSYM GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_THRESHOLD}
  GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_THRESHOLD = '{5b33697b-e89d-4d38-aa46-9e7dfb7cd2f9}';

//
// Specifies the weighting given to each occurence where affinitized work was scheduled to a parked core.
//
  {$EXTERNALSYM GUID_PROCESSOR_CORE_PARKING_AFFINITY_WEIGHTING}
  GUID_PROCESSOR_CORE_PARKING_AFFINITY_WEIGHTING = '{e70867f1-fa2f-4f4e-aea1-4d8a0ba23b20}';

//
// Specifies the factor by which to decrease the over utilization history on each core after the current performance check.
//
  {$EXTERNALSYM GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_DECREASE_FACTOR}
  GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_DECREASE_FACTOR = '{1299023c-bc28-4f0a-81ec-d3295a8d815d}';

//
// Specifies the threshold above which a core is considered to have been recently over utilized while parked.
//
  {$EXTERNALSYM GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_THRESHOLD}
  GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_THRESHOLD = '{9ac18e92-aa3c-4e27-b307-01ae37307129}';

//
// Specifies the weighting given to each occurence where a parked core is found to be over utilized.
//
  {$EXTERNALSYM GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_WEIGHTING}
  GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_WEIGHTING = '{8809c2d8-b155-42d4-bcda-0d345651b1db}';

//
// Specifies, in percentage, the busy threshold that must be met before a parked core is considered over utilized.
//
  {$EXTERNALSYM GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_THRESHOLD}
  GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_THRESHOLD = '{943c8cb6-6f93-4227-ad87-e9a3feec08d1}';

//
// Specifies if at least one processor per core should always remain unparked.
//

  {$EXTERNALSYM GUID_PROCESSOR_PARKING_CORE_OVERRIDE}
  GUID_PROCESSOR_PARKING_CORE_OVERRIDE = '{a55612aa-f624-42c6-a443-7397d064c04f}';

//
// Specifies what performance state a processor should enter when first parked.
//

  {$EXTERNALSYM GUID_PROCESSOR_PARKING_PERF_STATE}
  GUID_PROCESSOR_PARKING_PERF_STATE = '{447235c7-6a8d-4cc0-8e24-9eaf70b96e2b}';

//
// Specifies the number of perf time check intervals to average utility over.
//
  {$EXTERNALSYM GUID_PROCESSOR_PERF_HISTORY}
  GUID_PROCESSOR_PERF_HISTORY = '{7d24baa7-0b84-480f-840c-1b0743c00f5f}';

//
// Specifies active vs passive cooling.  Although not directly related to
// processor settings, it is the processor that gets throttled if we're doing
// passive cooling, so it is fairly strongly related.
  {$EXTERNALSYM GUID_SYSTEM_COOLING_POLICY}
  GUID_SYSTEM_COOLING_POLICY = '{94D3A615-A899-4AC5-AE2B-E4D8F634367F}';

// Lock Console on Wake
// --------------------
//

// Specifies the behavior of the system when we wake from standby or
// hibernate.  If this is set, then we will cause the console to lock
// after we resume.
//
  {$EXTERNALSYM GUID_LOCK_CONSOLE_ON_WAKE}
  GUID_LOCK_CONSOLE_ON_WAKE = '{0E796BDB-100D-47D6-A2D5-F7D2DAA51F51}';

// Device idle characteristics
// ---------------------------
//
// Specifies whether to use the "performance" or "conservative" timeouts for
// device idle management.
//
  {$EXTERNALSYM GUID_DEVICE_IDLE_POLICY}
  GUID_DEVICE_IDLE_POLICY = '{4faab71a-92e5-4726-b531-224559672d19}';

  {$EXTERNALSYM POWER_DEVICE_IDLE_POLICY_PERFORMANCE}
  POWER_DEVICE_IDLE_POLICY_PERFORMANCE= 0;
  {$EXTERNALSYM POWER_DEVICE_IDLE_POLICY_CONSERVATIVE}
  POWER_DEVICE_IDLE_POLICY_CONSERVATIVE= 1;

// AC/DC power source
// ------------------
//

// Specifies the power source for the system.  consumers may register for
// notification when the power source changes and will be notified with
// one of 3 values:
// 0 - Indicates the system is being powered by an AC power source.
// 1 - Indicates the system is being powered by a DC power source.
// 2 - Indicates the system is being powered by a short-term DC power
//     source.  For example, this would be the case if the system is
//     being powed by a short-term battery supply in a backing UPS
//     system.  When this value is recieved, the consumer should make
//     preparations for either a system hibernate or system shutdown.
//
  {$EXTERNALSYM GUID_ACDC_POWER_SOURCE}
  GUID_ACDC_POWER_SOURCE = '{5D3E9A59-E9D5-4B00-A6BD-FF34FF516548}';

// Lid state changes
// -----------------
//
// Specifies the current state of the lid (open or closed). The callback won't
// be called at all until a lid device is found and its current state is known.
//
// Values:
//
// 0 - closed
// 1 - opened
//

  {$EXTERNALSYM GUID_LIDSWITCH_STATE_CHANGE}
  GUID_LIDSWITCH_STATE_CHANGE = '{BA3E0F4D-B817-4094-A2D1-D56379E6A0F3}';

// Battery life remaining
// ----------------------
//

// Specifies the percentage of battery life remaining.  The consumer
// may register for notification in order to track battery life in
// a fine-grained manner.
//
// Once registered, the consumer can expect to be notified as the battery
// life percentage changes.
//
// The consumer will recieve a value between 0 and 100 (inclusive) which
// indicates percent battery life remaining.
//
  {$EXTERNALSYM GUID_BATTERY_PERCENTAGE_REMAINING}
  GUID_BATTERY_PERCENTAGE_REMAINING = '{A7AD8041-B45A-4CAE-87A3-EECBB468A9E1}';


// Notification to listeners that the system is fairly busy and won't be moving
// into an idle state any time soon.  This can be used as a hint to listeners
// that now might be a good time to do background tasks.
//
  {$EXTERNALSYM GUID_IDLE_BACKGROUND_TASK}
  GUID_IDLE_BACKGROUND_TASK = '{515C31D8-F734-163D-A0FD-11A08C91E8F1}';

// Notification to listeners that the system is fairly busy and won't be moving
// into an idle state any time soon.  This can be used as a hint to listeners
// that now might be a good time to do background tasks.
//
  {$EXTERNALSYM GUID_BACKGROUND_TASK_NOTIFICATION}
  GUID_BACKGROUND_TASK_NOTIFICATION = '{CF23F240-2A54-48D8-B114-DE1518FF052E}';

// Define a GUID that will represent the action of a direct experience button
// on the platform.  Users will register for this DPPE setting and recieve
// notification when the h/w button is pressed.
//
  {$EXTERNALSYM GUID_APPLAUNCH_BUTTON}
  GUID_APPLAUNCH_BUTTON = '{1A689231-7399-4E9A-8F99-B71F999DB3FA}';

// PCI Express power settings
// ------------------------
//

// Specifies the subgroup which will contain all of the PCI Express
// settings for a single policy.
//
  {$EXTERNALSYM GUID_PCIEXPRESS_SETTINGS_SUBGROUP}
  GUID_PCIEXPRESS_SETTINGS_SUBGROUP = '{501a4d13-42af-4429-9fd1-a8218c268e20}';

// Specifies the PCI Express ASPM power policy.
//
  {$EXTERNALSYM GUID_PCIEXPRESS_ASPM_POLICY}
  GUID_PCIEXPRESS_ASPM_POLICY = '{ee12f906-d277-404b-b6da-e5fa1a576df5}';

// POWER Shutdown settings
// ------------------------
//

// Specifies if forced shutdown should be used for all button and lid initiated
// shutdown actions.
//

  {$EXTERNALSYM GUID_ENABLE_SWITCH_FORCED_SHUTDOWN}
  GUID_ENABLE_SWITCH_FORCED_SHUTDOWN = '{833a6b62-dfa4-46d1-82f8-e09e34d029d6}';

type
  _SYSTEM_POWER_STATE = (
    PowerSystemUnspecified,
    PowerSystemWorking,
    PowerSystemSleeping1,
    PowerSystemSleeping2,
    PowerSystemSleeping3,
    PowerSystemHibernate,
    PowerSystemShutdown,
    PowerSystemMaximum);
  {$EXTERNALSYM _SYSTEM_POWER_STATE}
  SYSTEM_POWER_STATE = _SYSTEM_POWER_STATE;
  {$EXTERNALSYM SYSTEM_POWER_STATE}
  PSYSTEM_POWER_STATE = ^SYSTEM_POWER_STATE;
  {$EXTERNALSYM PSYSTEM_POWER_STATE}
  TSystemPowerState = SYSTEM_POWER_STATE;
  PSystemPowerState = PSYSTEM_POWER_STATE;

const
  POWER_SYSTEM_MAXIMUM = 7;
  {$EXTERNALSYM POWER_SYSTEM_MAXIMUM}

type
  POWER_ACTION = (
    PowerActionNone,
    PowerActionReserved,
    PowerActionSleep,
    PowerActionHibernate,
    PowerActionShutdown,
    PowerActionShutdownReset,
    PowerActionShutdownOff,
    PowerActionWarmEject);
  {$EXTERNALSYM POWER_ACTION}
  PPOWER_ACTION = ^POWER_ACTION;
  {$EXTERNALSYM PPOWER_ACTION}
  TPowerAction = POWER_ACTION;
  PPowerAction = PPOWER_ACTION;

  _DEVICE_POWER_STATE = (
    PowerDeviceUnspecified,
    PowerDeviceD0,
    PowerDeviceD1,
    PowerDeviceD2,
    PowerDeviceD3,
    PowerDeviceMaximum);
  {$EXTERNALSYM _DEVICE_POWER_STATE}
  DEVICE_POWER_STATE = _DEVICE_POWER_STATE;
  {$EXTERNALSYM DEVICE_POWER_STATE}
  PDEVICE_POWER_STATE = ^DEVICE_POWER_STATE;
  {$EXTERNALSYM PDEVICE_POWER_STATE}
  TDevicePowerState = DEVICE_POWER_STATE;
  PDevicePowerState = PDEVICE_POWER_STATE;

const
  ES_SYSTEM_REQUIRED  = DWORD($00000001);
  {$EXTERNALSYM ES_SYSTEM_REQUIRED}
  ES_DISPLAY_REQUIRED = DWORD($00000002);
  {$EXTERNALSYM ES_DISPLAY_REQUIRED}
  ES_USER_PRESENT     = DWORD($00000004);
  {$EXTERNALSYM ES_USER_PRESENT}
  ES_AWAYMODE_REQUIRED = DWORD($00000040);
  {$EXTERNALSYM ES_AWAYMODE_REQUIRED}
  ES_CONTINUOUS       = DWORD($80000000);
  {$EXTERNALSYM ES_CONTINUOUS}

type
  EXECUTION_STATE = DWORD;
  {$EXTERNALSYM EXECUTION_STATE}

  LATENCY_TIME = (LT_DONT_CARE, LT_LOWEST_LATENCY);
  {$EXTERNALSYM LATENCY_TIME}
  TLatencyTime = LATENCY_TIME;

{$IFDEF WIN7_UP}

const
  {$EXTERNALSYM DIAGNOSTIC_REASON_VERSION}
  DIAGNOSTIC_REASON_VERSION           = 0;

  {$EXTERNALSYM DIAGNOSTIC_REASON_SIMPLE_STRING}
  DIAGNOSTIC_REASON_SIMPLE_STRING     = $00000001;
  {$EXTERNALSYM DIAGNOSTIC_REASON_DETAILED_STRING}
  DIAGNOSTIC_REASON_DETAILED_STRING   = $00000002;
  {$EXTERNALSYM DIAGNOSTIC_REASON_NOT_SPECIFIED}
  DIAGNOSTIC_REASON_NOT_SPECIFIED     = $80000000;
  {$EXTERNALSYM DIAGNOSTIC_REASON_INVALID_FLAGS}
  DIAGNOSTIC_REASON_INVALID_FLAGS     = (not $80000003);

{$ENDIF WIN7_UP}

//
// Defines for power request APIs
//

const
  {$EXTERNALSYM POWER_REQUEST_CONTEXT_VERSION}
  POWER_REQUEST_CONTEXT_VERSION       = 0;

  {$EXTERNALSYM POWER_REQUEST_CONTEXT_SIMPLE_STRING}
  POWER_REQUEST_CONTEXT_SIMPLE_STRING = $00000001;
  {$EXTERNALSYM POWER_REQUEST_CONTEXT_DETAILED_STRING}
  POWER_REQUEST_CONTEXT_DETAILED_STRING= $00000002;

//
// N.B. The maximum is a macro (rather than part of enum) for cgen to be able
// to parse power.h correctly. When a new power request type is added, the
// PowerRequestMaximum should be manually incremented.
//

type
  PPowerRequestType = ^TPowerRequestType;
  {$EXTERNALSYM _POWER_REQUEST_TYPE}
  _POWER_REQUEST_TYPE = (
    PowerRequestDisplayRequired,
    PowerRequestSystemRequired,
    PowerRequestAwayModeRequired
  );
  {$EXTERNALSYM POWER_REQUEST_TYPE}
  POWER_REQUEST_TYPE = _POWER_REQUEST_TYPE;
  {$EXTERNALSYM PPOWER_REQUEST_TYPE}
  PPOWER_REQUEST_TYPE = ^_POWER_REQUEST_TYPE;
  TPowerRequestType = _POWER_REQUEST_TYPE;

const
  {$EXTERNALSYM PowerRequestMaximum}
  PowerRequestMaximum                 = 3;

//-----------------------------------------------------------------------------
// Device Power Information
// Accessable via CM_Get_DevInst_Registry_Property_Ex(CM_DRP_DEVICE_POWER_DATA)
//-----------------------------------------------------------------------------

const
  PDCAP_D0_SUPPORTED           = $00000001;
  {$EXTERNALSYM PDCAP_D0_SUPPORTED}
  PDCAP_D1_SUPPORTED           = $00000002;
  {$EXTERNALSYM PDCAP_D1_SUPPORTED}
  PDCAP_D2_SUPPORTED           = $00000004;
  {$EXTERNALSYM PDCAP_D2_SUPPORTED}
  PDCAP_D3_SUPPORTED           = $00000008;
  {$EXTERNALSYM PDCAP_D3_SUPPORTED}
  PDCAP_WAKE_FROM_D0_SUPPORTED = $00000010;
  {$EXTERNALSYM PDCAP_WAKE_FROM_D0_SUPPORTED}
  PDCAP_WAKE_FROM_D1_SUPPORTED = $00000020;
  {$EXTERNALSYM PDCAP_WAKE_FROM_D1_SUPPORTED}
  PDCAP_WAKE_FROM_D2_SUPPORTED = $00000040;
  {$EXTERNALSYM PDCAP_WAKE_FROM_D2_SUPPORTED}
  PDCAP_WAKE_FROM_D3_SUPPORTED = $00000080;
  {$EXTERNALSYM PDCAP_WAKE_FROM_D3_SUPPORTED}
  PDCAP_WARM_EJECT_SUPPORTED   = $00000100;
  {$EXTERNALSYM PDCAP_WARM_EJECT_SUPPORTED}

type
  CM_Power_Data_s = record
    PD_Size: DWORD;
    PD_MostRecentPowerState: DEVICE_POWER_STATE;
    PD_Capabilities: DWORD;
    PD_D1Latency: DWORD;
    PD_D2Latency: DWORD;
    PD_D3Latency: DWORD;
    PD_PowerStateMapping: array [0..POWER_SYSTEM_MAXIMUM - 1] of DEVICE_POWER_STATE;
    PD_DeepestSystemWake: SYSTEM_POWER_STATE;
  end;
  {$EXTERNALSYM CM_Power_Data_s}
  CM_POWER_DATA = CM_Power_Data_s;
  {$EXTERNALSYM CM_POWER_DATA}
  PCM_POWER_DATA = ^CM_POWER_DATA;
  {$EXTERNALSYM PCM_POWER_DATA}
  TCmPowerData = CM_POWER_DATA;
  PCmPowerData = PCM_POWER_DATA;

  POWER_INFORMATION_LEVEL = (
    SystemPowerPolicyAc,
    SystemPowerPolicyDc,
    VerifySystemPolicyAc,
    VerifySystemPolicyDc,
    SystemPowerCapabilities,
    SystemBatteryState,
    SystemPowerStateHandler,
    ProcessorStateHandler,
    SystemPowerPolicyCurrent,
    AdministratorPowerPolicy,
    SystemReserveHiberFile,
    ProcessorInformation,
    SystemPowerInformation,
    ProcessorStateHandler2,
    LastWakeTime,                                   // Compare with KeQueryInterruptTime()
    LastSleepTime,                                  // Compare with KeQueryInterruptTime()
    SystemExecutionState,
    SystemPowerStateNotifyHandler,
    ProcessorPowerPolicyAc,
    ProcessorPowerPolicyDc,
    VerifyProcessorPowerPolicyAc,
    VerifyProcessorPowerPolicyDc,
    ProcessorPowerPolicyCurrent,
    SystemPowerStateLogging,
    SystemPowerLoggingEntry,
    SetPowerSettingValue,
    NotifyUserPowerSetting,
    PowerInformationLevelUnused0,
    PowerInformationLevelUnused1,
    SystemVideoState,
    TraceApplicationPowerMessage,
    TraceApplicationPowerMessageEnd,
    ProcessorPerfStates,
    ProcessorIdleStates,
    ProcessorCap,
    SystemWakeSource,
    SystemHiberFileInformation,
    TraceServicePowerMessage,
    ProcessorLoad,
    PowerShutdownNotification,
    MonitorCapabilities,
    SessionPowerInit,
    SessionDisplayState,
    PowerRequestCreate,
    PowerRequestAction,
    GetPowerRequestList,
    ProcessorInformationEx,
    NotifyUserModeLegacyPowerEvent,
    GroupPark,
    ProcessorIdleDomains,
    WakeTimerList,
    SystemHiberFileSize,
    PowerInformationLevelMaximum
  );
  {$EXTERNALSYM POWER_INFORMATION_LEVEL}
  TPowerInformationLevel = POWER_INFORMATION_LEVEL;

//
// Power Setting definitions
//

  PSystemPowerCondition = ^TSystemPowerCondition;
  {$EXTERNALSYM SYSTEM_POWER_CONDITION}
  SYSTEM_POWER_CONDITION = (
    PoAc,
    PoDc,
    PoHot,
    PoConditionMaximum
  );
  TSystemPowerCondition = SYSTEM_POWER_CONDITION;

  PSetPowerSettingValue = ^TSetPowerSettingValue;
  {$EXTERNALSYM SET_POWER_SETTING_VALUE}
  SET_POWER_SETTING_VALUE = record
    //
    // Version of this structure.  Currently should be set to
    // POWER_SETTING_VALUE_VERSION.
    //
    Version: DWORD;
    //
    // GUID representing the power setting being applied.
    //
    Guid: GUID;
    //
    // What power state should this setting be applied to?  E.g.
    // AC, DC, thermal, ...
    //
    PowerCondition: SYSTEM_POWER_CONDITION;
    //
    // Length (in bytes) of the 'Data' member.
    //
    DataLength: DWORD;
    //
    // Data which contains the actual setting value.
    //
    Data: array[0..ANYSIZE_ARRAY - 1] of Byte;
  end;
  {$EXTERNALSYM PSET_POWER_SETTING_VALUE}
  PSET_POWER_SETTING_VALUE = ^SET_POWER_SETTING_VALUE;
  TSetPowerSettingValue = SET_POWER_SETTING_VALUE;

const
  {$EXTERNALSYM POWER_SETTING_VALUE_VERSION}
  POWER_SETTING_VALUE_VERSION         = ($1);

type
  PNotifyUserPowerSetting = ^TNotifyUserPowerSetting;
  {$EXTERNALSYM NOTIFY_USER_POWER_SETTING}
  NOTIFY_USER_POWER_SETTING = record
    Guid: GUID;
  end;
  {$EXTERNALSYM PNOTIFY_USER_POWER_SETTING}
  PNOTIFY_USER_POWER_SETTING = ^NOTIFY_USER_POWER_SETTING;
  TNotifyUserPowerSetting = NOTIFY_USER_POWER_SETTING;

//
// Package definition for an experience button device notification.  When
// someone registers for GUID_EXPERIENCE_BUTTON, this is the definition of
// the setting data they'll get.
//
  PApplicationlaunchSettingValue = ^TApplicationlaunchSettingValue;
  {$EXTERNALSYM _APPLICATIONLAUNCH_SETTING_VALUE}
  _APPLICATIONLAUNCH_SETTING_VALUE = record
    //
    // System time when the most recent button press ocurred.  Note that this is
    // specified in 100ns internvals since January 1, 1601.
    //
    ActivationTime: LARGE_INTEGER;
    //
    // Reserved for internal use.
    //
    Flags: DWORD;
    //
    // which instance of this device was pressed?
    //
    ButtonInstanceID: DWORD;
  end;
  {$EXTERNALSYM APPLICATIONLAUNCH_SETTING_VALUE}
  APPLICATIONLAUNCH_SETTING_VALUE = _APPLICATIONLAUNCH_SETTING_VALUE;
  {$EXTERNALSYM PAPPLICATIONLAUNCH_SETTING_VALUE}
  PAPPLICATIONLAUNCH_SETTING_VALUE = ^_APPLICATIONLAUNCH_SETTING_VALUE;
  TApplicationlaunchSettingValue = _APPLICATIONLAUNCH_SETTING_VALUE;

//
// define platform roles
//

  PPowerPlatformRole = ^TPowerPlatformRole;
  {$EXTERNALSYM POWER_PLATFORM_ROLE}
  POWER_PLATFORM_ROLE       = (
    PlatformRoleUnspecified = 0,
    PlatformRoleDesktop,
    PlatformRoleMobile,
    PlatformRoleWorkstation,
    PlatformRoleEnterpriseServer,
    PlatformRoleSOHOServer,
    PlatformRoleAppliancePC,
    PlatformRolePerformanceServer,
    PlatformRoleMaximum
  );
  TPowerPlatformRole = POWER_PLATFORM_ROLE;

//
// System power manager capabilities
//

  BATTERY_REPORTING_SCALE = record
    Granularity: DWORD;
    Capacity: DWORD;
  end;
  {$EXTERNALSYM BATTERY_REPORTING_SCALE}
  PBATTERY_REPORTING_SCALE = ^BATTERY_REPORTING_SCALE;
  {$EXTERNALSYM PBATTERY_REPORTING_SCALE}
  TBatteryReportingScale = BATTERY_REPORTING_SCALE;
  PBatteryReportingScale = PBATTERY_REPORTING_SCALE;


//

  PPpmWmiLegacyPerfstate = ^TPpmWmiLegacyPerfstate;
  {$EXTERNALSYM PPM_WMI_LEGACY_PERFSTATE}
  PPM_WMI_LEGACY_PERFSTATE = record
    Frequency: DWORD;
    Flags: DWORD;
    PercentFrequency: DWORD;
  end;
  {$EXTERNALSYM PPPM_WMI_LEGACY_PERFSTATE}
  PPPM_WMI_LEGACY_PERFSTATE = ^PPM_WMI_LEGACY_PERFSTATE;
  TPpmWmiLegacyPerfstate = PPM_WMI_LEGACY_PERFSTATE;

  PPpmWmiIdleState = ^TPpmWmiIdleState;
  {$EXTERNALSYM PPM_WMI_IDLE_STATE}
  PPM_WMI_IDLE_STATE = record
    Latency: DWORD;
    Power: DWORD;
    TimeCheck: DWORD;
    PromotePercent: Byte;
    DemotePercent: Byte;
    StateType: Byte;
    Reserved: Byte;
    StateFlags: DWORD;
    Context: DWORD;
    IdleHandler: DWORD;
    Reserved1: DWORD;               // reserved for future use
  end;
  {$EXTERNALSYM PPPM_WMI_IDLE_STATE}
  PPPM_WMI_IDLE_STATE = ^PPM_WMI_IDLE_STATE;
  TPpmWmiIdleState = PPM_WMI_IDLE_STATE;

  PPpmWmiIdleStates = ^TPpmWmiIdleStates;
  {$EXTERNALSYM PPM_WMI_IDLE_STATES}
  PPM_WMI_IDLE_STATES = record
    &Type: DWORD;
    Count: DWORD;
    TargetState: DWORD;              // current idle state
    OldState: DWORD;                 // previous idle state
    TargetProcessors: DWORD64;
    State: array[0..ANYSIZE_ARRAY - 1] of PPM_WMI_IDLE_STATE;
  end;
  {$EXTERNALSYM PPPM_WMI_IDLE_STATES}
  PPPM_WMI_IDLE_STATES = ^PPM_WMI_IDLE_STATES;
  TPpmWmiIdleStates = PPM_WMI_IDLE_STATES;

  PPpmWmiIdleStatesEx = ^TPpmWmiIdleStatesEx;
  {$EXTERNALSYM PPM_WMI_IDLE_STATES_EX}
  PPM_WMI_IDLE_STATES_EX = record
    &Type: DWORD;
    Count: DWORD;
    TargetState: DWORD;              // current idle state
    OldState: DWORD;                 // previous idle state
    TargetProcessors: Pointer;
    State: array[0..ANYSIZE_ARRAY - 1] of PPM_WMI_IDLE_STATE;
  end;
  {$EXTERNALSYM PPPM_WMI_IDLE_STATES_EX}
  PPPM_WMI_IDLE_STATES_EX = ^PPM_WMI_IDLE_STATES_EX;
  TPpmWmiIdleStatesEx = PPM_WMI_IDLE_STATES_EX;

  PPpmWmiPerfState = ^TPpmWmiPerfState;
  {$EXTERNALSYM PPM_WMI_PERF_STATE}
  PPM_WMI_PERF_STATE = record
    Frequency: DWORD;                // in Mhz
    Power: DWORD;                    // in milliwatts
    PercentFrequency: Byte;
    IncreaseLevel: Byte;             // goto higher state
    DecreaseLevel: Byte;             // goto lower state
    &Type: Byte;                      // performance or throttle
    IncreaseTime: DWORD;             // in tick counts
    DecreaseTime: DWORD;             // in tick counts
    Control: DWORD64;                // control value
    Status: DWORD64;                 // control value
    HitCount: DWORD;
    Reserved1: DWORD;                // reserved for future use
    Reserved2: DWORD64;
    Reserved3: DWORD64;
  end;
  {$EXTERNALSYM PPPM_WMI_PERF_STATE}
  PPPM_WMI_PERF_STATE = ^PPM_WMI_PERF_STATE;
  TPpmWmiPerfState = PPM_WMI_PERF_STATE;

  PPpmWmiPerfStates = ^TPpmWmiPerfStates;
  {$EXTERNALSYM PPM_WMI_PERF_STATES}
  PPM_WMI_PERF_STATES = record
    Count: DWORD;
    MaxFrequency: DWORD;
    CurrentState: DWORD;             // current state
    MaxPerfState: DWORD;             // fastest state considering policy restrictions
    MinPerfState: DWORD;             // slowest state considering policy restrictions
    LowestPerfState: DWORD;          // slowest perf state, fixed, aka the "knee"
    ThermalConstraint: DWORD;
    BusyAdjThreshold: Byte;
    PolicyType: Byte;                // domain coordination
    &Type: Byte;
    Reserved: Byte;
    TimerInterval: DWORD;
    TargetProcessors: DWORD64;       // domain affinity
    PStateHandler: DWORD;
    PStateContext: DWORD;
    TStateHandler: DWORD;
    TStateContext: DWORD;
    FeedbackHandler: DWORD;
    Reserved1: DWORD;
    Reserved2: DWORD64;
    State: array[0..ANYSIZE_ARRAY - 1] of PPM_WMI_PERF_STATE;
  end;
  {$EXTERNALSYM PPPM_WMI_PERF_STATES}
  PPPM_WMI_PERF_STATES = ^PPM_WMI_PERF_STATES;
  TPpmWmiPerfStates = PPM_WMI_PERF_STATES;

  PPpmWmiPerfStatesEx = ^TPpmWmiPerfStatesEx;
  {$EXTERNALSYM PPM_WMI_PERF_STATES_EX}
  PPM_WMI_PERF_STATES_EX = record
    Count: DWORD;
    MaxFrequency: DWORD;
    CurrentState: DWORD;             // current state
    MaxPerfState: DWORD;             // fastest state considering policy restrictions
    MinPerfState: DWORD;             // slowest state considering policy restrictions
    LowestPerfState: DWORD;          // slowest perf state, fixed, aka the "knee"
    ThermalConstraint: DWORD;
    BusyAdjThreshold: Byte;
    PolicyType: Byte;                // domain coordination
    &Type: Byte;
    Reserved: Byte;
    TimerInterval: DWORD;
    TargetProcessors: Pointer;       // domain affinity
    PStateHandler: DWORD;
    PStateContext: DWORD;
    TStateHandler: DWORD;
    TStateContext: DWORD;
    FeedbackHandler: DWORD;
    Reserved1: DWORD;
    Reserved2: DWORD64;
    State: array[0..ANYSIZE_ARRAY - 1] of PPM_WMI_PERF_STATE;
  end;
  {$EXTERNALSYM PPPM_WMI_PERF_STATES_EX}
  PPPM_WMI_PERF_STATES_EX = ^PPM_WMI_PERF_STATES_EX;
  TPpmWmiPerfStatesEx = PPM_WMI_PERF_STATES_EX;

//
// Legacy processor idle accounting.
//

const
  {$EXTERNALSYM PROC_IDLE_BUCKET_COUNT}
  PROC_IDLE_BUCKET_COUNT              = 6;

type
  PPpmIdleStateAccounting = ^TPpmIdleStateAccounting;
  {$EXTERNALSYM PPM_IDLE_STATE_ACCOUNTING}
  PPM_IDLE_STATE_ACCOUNTING = record
    IdleTransitions: DWORD;
    FailedTransitions: DWORD;
    InvalidBucketIndex: DWORD;
    TotalTime: DWORD64;
    IdleTimeBuckets: array[0..PROC_IDLE_BUCKET_COUNT - 1] of DWORD;
  end;
  {$EXTERNALSYM PPPM_IDLE_STATE_ACCOUNTING}
  PPPM_IDLE_STATE_ACCOUNTING = ^PPM_IDLE_STATE_ACCOUNTING;
  TPpmIdleStateAccounting = PPM_IDLE_STATE_ACCOUNTING;

  PPpmIdleAccounting = ^TPpmIdleAccounting;
  {$EXTERNALSYM PPM_IDLE_ACCOUNTING}
  PPM_IDLE_ACCOUNTING = record
    StateCount: DWORD;
    TotalTransitions: DWORD;
    ResetCount: DWORD;
    StartTime: DWORD64;
    State: array[0..ANYSIZE_ARRAY - 1] of PPM_IDLE_STATE_ACCOUNTING;
  end;
  {$EXTERNALSYM PPPM_IDLE_ACCOUNTING}
  PPPM_IDLE_ACCOUNTING = ^PPM_IDLE_ACCOUNTING;
  TPpmIdleAccounting = PPM_IDLE_ACCOUNTING;

//
// Processor idle accounting.
//

const
  {$EXTERNALSYM PROC_IDLE_BUCKET_COUNT_EX}
  PROC_IDLE_BUCKET_COUNT_EX           = 16;

type
  PPpmIdleStateBucketEx = ^TPpmIdleStateBucketEx;
  {$EXTERNALSYM PPM_IDLE_STATE_BUCKET_EX}
  PPM_IDLE_STATE_BUCKET_EX = record
    TotalTimeUs: DWORD64;
    MinTimeUs: DWORD;
    MaxTimeUs: DWORD;
    Count: DWORD;
  end;
  {$EXTERNALSYM PPPM_IDLE_STATE_BUCKET_EX}
  PPPM_IDLE_STATE_BUCKET_EX = ^PPM_IDLE_STATE_BUCKET_EX;
  TPpmIdleStateBucketEx = PPM_IDLE_STATE_BUCKET_EX;

  PPpmIdleStateAccountingEx = ^TPpmIdleStateAccountingEx;
  {$EXTERNALSYM PPM_IDLE_STATE_ACCOUNTING_EX}
  PPM_IDLE_STATE_ACCOUNTING_EX = record
    TotalTime: DWORD64;
    IdleTransitions: DWORD;
    FailedTransitions: DWORD;
    InvalidBucketIndex: DWORD;
    MinTimeUs: DWORD;
    MaxTimeUs: DWORD;
    IdleTimeBuckets: array[0..PROC_IDLE_BUCKET_COUNT_EX - 1] of PPM_IDLE_STATE_BUCKET_EX;
  end;
  {$EXTERNALSYM PPPM_IDLE_STATE_ACCOUNTING_EX}
  PPPM_IDLE_STATE_ACCOUNTING_EX = ^PPM_IDLE_STATE_ACCOUNTING_EX;
  TPpmIdleStateAccountingEx = PPM_IDLE_STATE_ACCOUNTING_EX;

  PPpmIdleAccountingEx = ^TPpmIdleAccountingEx;
  {$EXTERNALSYM PPM_IDLE_ACCOUNTING_EX}
  PPM_IDLE_ACCOUNTING_EX = record
    StateCount: DWORD;
    TotalTransitions: DWORD;
    ResetCount: DWORD;
    StartTime: DWORD64;
    State: array[0..ANYSIZE_ARRAY - 1] of PPM_IDLE_STATE_ACCOUNTING_EX;
  end;
  {$EXTERNALSYM PPPM_IDLE_ACCOUNTING_EX}
  PPPM_IDLE_ACCOUNTING_EX = ^PPM_IDLE_ACCOUNTING_EX;
  TPpmIdleAccountingEx = PPM_IDLE_ACCOUNTING_EX;

//
// Definitions of coordination types for _PSD, _TSD, and _CSD BIOS objects from
// the Acpi 3.0 specification
//

const
  {$EXTERNALSYM ACPI_PPM_SOFTWARE_ALL}
  ACPI_PPM_SOFTWARE_ALL               = $FC;
  {$EXTERNALSYM ACPI_PPM_SOFTWARE_ANY}
  ACPI_PPM_SOFTWARE_ANY               = $FD;
  {$EXTERNALSYM ACPI_PPM_HARDWARE_ALL}
  ACPI_PPM_HARDWARE_ALL               = $FE;

//
// Definition of Microsoft PPM coordination types.
//

  {$EXTERNALSYM MS_PPM_SOFTWARE_ALL}
  MS_PPM_SOFTWARE_ALL                 = $1;

//
// Processor firmware rundown feature bit definitions.
//

  {$EXTERNALSYM PPM_FIRMWARE_ACPI1C2}
  PPM_FIRMWARE_ACPI1C2                = $00000001;
  {$EXTERNALSYM PPM_FIRMWARE_ACPI1C3}
  PPM_FIRMWARE_ACPI1C3                = $00000002;
  {$EXTERNALSYM PPM_FIRMWARE_ACPI1TSTATES}
  PPM_FIRMWARE_ACPI1TSTATES           = $00000004;
  {$EXTERNALSYM PPM_FIRMWARE_CST}
  PPM_FIRMWARE_CST                    = $00000008;
  {$EXTERNALSYM PPM_FIRMWARE_CSD}
  PPM_FIRMWARE_CSD                    = $00000010;
  {$EXTERNALSYM PPM_FIRMWARE_PCT}
  PPM_FIRMWARE_PCT                    = $00000020;
  {$EXTERNALSYM PPM_FIRMWARE_PSS}
  PPM_FIRMWARE_PSS                    = $00000040;
  {$EXTERNALSYM PPM_FIRMWARE_XPSS}
  PPM_FIRMWARE_XPSS                   = $00000080;
  {$EXTERNALSYM PPM_FIRMWARE_PPC}
  PPM_FIRMWARE_PPC                    = $00000100;
  {$EXTERNALSYM PPM_FIRMWARE_PSD}
  PPM_FIRMWARE_PSD                    = $00000200;
  {$EXTERNALSYM PPM_FIRMWARE_PTC}
  PPM_FIRMWARE_PTC                    = $00000400;
  {$EXTERNALSYM PPM_FIRMWARE_TSS}
  PPM_FIRMWARE_TSS                    = $00000800;
  {$EXTERNALSYM PPM_FIRMWARE_TPC}
  PPM_FIRMWARE_TPC                    = $00001000;
  {$EXTERNALSYM PPM_FIRMWARE_TSD}
  PPM_FIRMWARE_TSD                    = $00002000;
  {$EXTERNALSYM PPM_FIRMWARE_PCCH}
  PPM_FIRMWARE_PCCH                   = $00004000;
  {$EXTERNALSYM PPM_FIRMWARE_PCCP}
  PPM_FIRMWARE_PCCP                   = $00008000;

//
// Processor Power Management WMI interface.
//

  PPM_PERFSTATE_CHANGE_GUID = '{A5B32DDD-7F39-4abc-B892-900E43B59EBB}';

  PPM_PERFSTATE_DOMAIN_CHANGE_GUID = '{995e6b7f-d653-497a-b978-36a30c29bf01}';

  PPM_IDLESTATE_CHANGE_GUID = '{4838fe4f-f71c-4e51-9ecc-8430a7ac4c6c}';

  PPM_PERFSTATES_DATA_GUID = '{5708cc20-7d40-4bf4-b4aa-2b01338d0126}';

  PPM_IDLESTATES_DATA_GUID = '{ba138e10-e250-4ad7-8616-cf1a7ad410e7}';

  PPM_IDLE_ACCOUNTING_GUID = '{e2a26f78-ae07-4ee0-a30f-ce354f5a94cd}';

  PPM_IDLE_ACCOUNTING_EX_GUID = '{d67abd39-81f8-4a5e-8152-72e31ec912ee}';

  PPM_THERMALCONSTRAINT_GUID = '{a852c2c8-1a4c-423b-8c2c-f30d82931a88}';

  PPM_PERFMON_PERFSTATE_GUID = '{7fd18652-0cfe-40d2-b0a1-0b066a87759e}';

  PPM_THERMAL_POLICY_CHANGE_GUID = '{48f377b8-6880-4c7b-8bdc-380176c6654d}';


type
  PPpmPerfstateEvent = ^TPpmPerfstateEvent;
  {$EXTERNALSYM PPM_PERFSTATE_EVENT}
  PPM_PERFSTATE_EVENT = record
    State: DWORD;
    Status: DWORD;
    Latency: DWORD;
    Speed: DWORD;
    Processor: DWORD;
  end;
  {$EXTERNALSYM PPPM_PERFSTATE_EVENT}
  PPPM_PERFSTATE_EVENT = ^PPM_PERFSTATE_EVENT;
  TPpmPerfstateEvent = PPM_PERFSTATE_EVENT;

  PPpmPerfstateDomainEvent = ^TPpmPerfstateDomainEvent;
  {$EXTERNALSYM PPM_PERFSTATE_DOMAIN_EVENT}
  PPM_PERFSTATE_DOMAIN_EVENT = record
    State: DWORD;
    Latency: DWORD;
    Speed: DWORD;
    Processors: DWORD64;
  end;
  {$EXTERNALSYM PPPM_PERFSTATE_DOMAIN_EVENT}
  PPPM_PERFSTATE_DOMAIN_EVENT = ^PPM_PERFSTATE_DOMAIN_EVENT;
  TPpmPerfstateDomainEvent = PPM_PERFSTATE_DOMAIN_EVENT;

  PPpmIdlestateEvent = ^TPpmIdlestateEvent;
  {$EXTERNALSYM PPM_IDLESTATE_EVENT}
  PPM_IDLESTATE_EVENT = record
    NewState: DWORD;
    OldState: DWORD;
    Processors: DWORD64;
  end;
  {$EXTERNALSYM PPPM_IDLESTATE_EVENT}
  PPPM_IDLESTATE_EVENT = ^PPM_IDLESTATE_EVENT;
  TPpmIdlestateEvent = PPM_IDLESTATE_EVENT;

  PPpmThermalchangeEvent = ^TPpmThermalchangeEvent;
  {$EXTERNALSYM PPM_THERMALCHANGE_EVENT}
  PPM_THERMALCHANGE_EVENT = record
    ThermalConstraint: DWORD;
    Processors: DWORD64;
  end;
  {$EXTERNALSYM PPPM_THERMALCHANGE_EVENT}
  PPPM_THERMALCHANGE_EVENT = ^PPM_THERMALCHANGE_EVENT;
  TPpmThermalchangeEvent = PPM_THERMALCHANGE_EVENT;

  PPpmThermalPolicyEvent = ^TPpmThermalPolicyEvent;
  {$EXTERNALSYM PPM_THERMAL_POLICY_EVENT}
  PPM_THERMAL_POLICY_EVENT = record
    Mode: Byte;
    Processors: DWORD64;
  end;
  {$EXTERNALSYM PPPM_THERMAL_POLICY_EVENT}
  PPPM_THERMAL_POLICY_EVENT = ^PPM_THERMAL_POLICY_EVENT;
  TPpmThermalPolicyEvent = PPM_THERMAL_POLICY_EVENT;

// Power Policy Management interfaces
//

  PPOWER_ACTION_POLICY = ^POWER_ACTION_POLICY;
  {$EXTERNALSYM PPOWER_ACTION_POLICY}
  POWER_ACTION_POLICY = record
    Action: POWER_ACTION;
    Flags: DWORD;
    EventCode: DWORD;
  end;
  {$EXTERNALSYM POWER_ACTION_POLICY}
  TPowerActionPolicy = POWER_ACTION_POLICY;
  PPowerActionPolicy = PPOWER_ACTION_POLICY;

// POWER_ACTION_POLICY->Flags:

const
  POWER_ACTION_QUERY_ALLOWED  = $00000001;
  {$EXTERNALSYM POWER_ACTION_QUERY_ALLOWED}
  POWER_ACTION_UI_ALLOWED     = $00000002;
  {$EXTERNALSYM POWER_ACTION_UI_ALLOWED}
  POWER_ACTION_OVERRIDE_APPS  = $00000004;
  {$EXTERNALSYM POWER_ACTION_OVERRIDE_APPS}
  POWER_ACTION_LIGHTEST_FIRST = $10000000;
  {$EXTERNALSYM POWER_ACTION_LIGHTEST_FIRST}
  POWER_ACTION_LOCK_CONSOLE   = $20000000;
  {$EXTERNALSYM POWER_ACTION_LOCK_CONSOLE}
  POWER_ACTION_DISABLE_WAKES  = $40000000;
  {$EXTERNALSYM POWER_ACTION_DISABLE_WAKES}
  POWER_ACTION_CRITICAL       = DWORD($80000000);
  {$EXTERNALSYM POWER_ACTION_CRITICAL}

// POWER_ACTION_POLICY->EventCode flags

  POWER_LEVEL_USER_NOTIFY_TEXT  = $00000001;
  {$EXTERNALSYM POWER_LEVEL_USER_NOTIFY_TEXT}
  POWER_LEVEL_USER_NOTIFY_SOUND = $00000002;
  {$EXTERNALSYM POWER_LEVEL_USER_NOTIFY_SOUND}
  POWER_LEVEL_USER_NOTIFY_EXEC  = $00000004;
  {$EXTERNALSYM POWER_LEVEL_USER_NOTIFY_EXEC}
  POWER_USER_NOTIFY_BUTTON      = $00000008;
  {$EXTERNALSYM POWER_USER_NOTIFY_BUTTON}
  POWER_USER_NOTIFY_SHUTDOWN    = $00000010;
  {$EXTERNALSYM POWER_USER_NOTIFY_SHUTDOWN}
  POWER_FORCE_TRIGGER_RESET     = DWORD($80000000);
  {$EXTERNALSYM POWER_FORCE_TRIGGER_RESET}

// Note: for battery alarm EventCodes, the ID of the battery alarm << 16 is ORed
// into the flags.  For example: DISCHARGE_POLICY_LOW << 16

//
// The GUID_BATTERY_DISCHARGE_FLAGS_x power settings use a subset of EventCode
// flags.  The POWER_FORCE_TRIGGER_RESET flag doesn't make sense for a battery
// alarm so it is overloaded for other purposes (gerneral enable/disable).
  {$EXTERNALSYM BATTERY_DISCHARGE_FLAGS_EVENTCODE_MASK}
  BATTERY_DISCHARGE_FLAGS_EVENTCODE_MASK= $00000007;
  {$EXTERNALSYM BATTERY_DISCHARGE_FLAGS_ENABLE}
  BATTERY_DISCHARGE_FLAGS_ENABLE      = $80000000;

// system battery drain policies

type
  PSYSTEM_POWER_LEVEL = ^SYSTEM_POWER_LEVEL;
  {$EXTERNALSYM PSYSTEM_POWER_LEVEL}
  SYSTEM_POWER_LEVEL = record
    Enable: BOOLEAN;
    Spare: array [0..3 - 1] of BYTE;
    BatteryLevel: DWORD;
    PowerPolicy: POWER_ACTION_POLICY;
    MinSystemState: SYSTEM_POWER_STATE;
  end;
  {$EXTERNALSYM SYSTEM_POWER_LEVEL}
  TSystemPowerLevel = SYSTEM_POWER_LEVEL;
  PSystemPowerLevel = PSYSTEM_POWER_LEVEL;

// Discharge policy constants

const
  NUM_DISCHARGE_POLICIES    = 4;
  {$EXTERNALSYM NUM_DISCHARGE_POLICIES}
  DISCHARGE_POLICY_CRITICAL = 0;
  {$EXTERNALSYM DISCHARGE_POLICY_CRITICAL}
  DISCHARGE_POLICY_LOW      = 1;
  {$EXTERNALSYM DISCHARGE_POLICY_LOW}

//
// Throttling policies
//

  PO_THROTTLE_NONE     = 0;
  {$EXTERNALSYM PO_THROTTLE_NONE}
  PO_THROTTLE_CONSTANT = 1;
  {$EXTERNALSYM PO_THROTTLE_CONSTANT}
  PO_THROTTLE_DEGRADE  = 2;
  {$EXTERNALSYM PO_THROTTLE_DEGRADE}
  PO_THROTTLE_ADAPTIVE = 3;
  {$EXTERNALSYM PO_THROTTLE_ADAPTIVE}
  PO_THROTTLE_MAXIMUM  = 4; // not a policy, just a limit
  {$EXTERNALSYM PO_THROTTLE_MAXIMUM}

// system power policies

type
  PSYSTEM_POWER_POLICY = ^SYSTEM_POWER_POLICY;
  {$EXTERNALSYM PSYSTEM_POWER_POLICY}
  _SYSTEM_POWER_POLICY = record
    Revision: DWORD; // 1
    // events
    PowerButton: POWER_ACTION_POLICY;
    SleepButton: POWER_ACTION_POLICY;
    LidClose: POWER_ACTION_POLICY;
    LidOpenWake: SYSTEM_POWER_STATE;
    Reserved: DWORD;
    // "system idle" detection
    Idle: POWER_ACTION_POLICY;
    IdleTimeout: DWORD;
    IdleSensitivity: BYTE;
    // dynamic throttling policy
    //      PO_THROTTLE_NONE, PO_THROTTLE_CONSTANT, PO_THROTTLE_DEGRADE, or PO_THROTTLE_ADAPTIVE
    DynamicThrottle: BYTE;
    Spare2: array [0..1] of BYTE;
    // meaning of power action "sleep"
    MinSleep: SYSTEM_POWER_STATE;
    MaxSleep: SYSTEM_POWER_STATE;
    ReducedLatencySleep: SYSTEM_POWER_STATE;
    WinLogonFlags: DWORD;
    // parameters for dozing
    Spare3: DWORD;
    DozeS4Timeout: DWORD;
    // battery policies
    BroadcastCapacityResolution: DWORD;
    DischargePolicy: array [0..NUM_DISCHARGE_POLICIES - 1] of SYSTEM_POWER_LEVEL;
    // video policies
    VideoTimeout: DWORD;
    VideoDimDisplay: BOOLEAN;
    VideoReserved: array [0..2] of DWORD;
    // hard disk policies
    SpindownTimeout: DWORD;
    // processor policies
    OptimizeForPower: LongBool;
    FanThrottleTolerance: BYTE;
    ForcedThrottle: BYTE;
    MinThrottle: BYTE;
    OverThrottled: POWER_ACTION_POLICY;
  end;
  {$EXTERNALSYM _SYSTEM_POWER_POLICY}
  SYSTEM_POWER_POLICY = _SYSTEM_POWER_POLICY;
  {$EXTERNALSYM SYSTEM_POWER_POLICY}
  TSystemPowerPolicy = SYSTEM_POWER_POLICY;
  PSystemPowerPolicy = PSYSTEM_POWER_POLICY;

// processor power policy state

  PPROCESSOR_POWER_POLICY_INFO = ^PROCESSOR_POWER_POLICY_INFO;
  {$EXTERNALSYM PPROCESSOR_POWER_POLICY_INFO}
  _PROCESSOR_POWER_POLICY_INFO = record
    // Time based information (will be converted to kernel units)
    TimeCheck: DWORD; // in US
    DemoteLimit: DWORD; // in US
    PromoteLimit: DWORD; // in US
    // Percentage based information
    DemotePercent: BYTE;
    PromotePercent: BYTE;
    Spare: array [0..1] of BYTE;
    // Flags
    Flags: DWORD;
    //DWORD                   AllowDemotion:1;
    //DWORD                   AllowPromotion:1;
    //DWORD                   Reserved:30;
  end;
  {$EXTERNALSYM _PROCESSOR_POWER_POLICY_INFO}
  PROCESSOR_POWER_POLICY_INFO = _PROCESSOR_POWER_POLICY_INFO;
  {$EXTERNALSYM PROCESSOR_POWER_POLICY_INFO}
  TProcessorPowerPolicyInfo = PROCESSOR_POWER_POLICY_INFO;
  PProcessorPowerPolicyInfo = PPROCESSOR_POWER_POLICY_INFO;

// processor power policy

  PPROCESSOR_POWER_POLICY = ^PROCESSOR_POWER_POLICY;
  {$EXTERNALSYM PPROCESSOR_POWER_POLICY}
  _PROCESSOR_POWER_POLICY = record
    Revision: DWORD; // 1
    // Dynamic Throttling Policy
    DynamicThrottle: BYTE;
    Spare: array [0..2] of BYTE;
    // Flags
    Reserved: DWORD;
    //DWORD                       DisableCStates:1;
    //DWORD                       Reserved:31;

    // System policy information
    // The Array is last, in case it needs to be grown and the structure
    // revision incremented.
    PolicyCount: DWORD;
    Policy: array [0..2] of PROCESSOR_POWER_POLICY_INFO;
  end;
  {$EXTERNALSYM _PROCESSOR_POWER_POLICY}
  PROCESSOR_POWER_POLICY = _PROCESSOR_POWER_POLICY;
  {$EXTERNALSYM PROCESSOR_POWER_POLICY}
  TProcessorPowerPolicy = PROCESSOR_POWER_POLICY;
  PProcessorPowerPolicy = PPROCESSOR_POWER_POLICY;

// administrator power policy overrides

  PADMINISTRATOR_POWER_POLICY = ^ADMINISTRATOR_POWER_POLICY;
  {$EXTERNALSYM PADMINISTRATOR_POWER_POLICY}
  _ADMINISTRATOR_POWER_POLICY = record
    // meaning of power action "sleep"
    MinSleep: SYSTEM_POWER_STATE;
    MaxSleep: SYSTEM_POWER_STATE;
    // video policies
    MinVideoTimeout: DWORD;
    MaxVideoTimeout: DWORD;
    // disk policies
    MinSpindownTimeout: DWORD;
    MaxSpindownTimeout: DWORD;
  end;
  {$EXTERNALSYM _ADMINISTRATOR_POWER_POLICY}
  ADMINISTRATOR_POWER_POLICY = _ADMINISTRATOR_POWER_POLICY;
  {$EXTERNALSYM ADMINISTRATOR_POWER_POLICY}
  TAdministratorPowerPolicy = ADMINISTRATOR_POWER_POLICY;
  PAdministratorPowerPolicy = PADMINISTRATOR_POWER_POLICY;

  PSYSTEM_POWER_CAPABILITIES = ^SYSTEM_POWER_CAPABILITIES;
  {$EXTERNALSYM PSYSTEM_POWER_CAPABILITIES}
  SYSTEM_POWER_CAPABILITIES = record
    // Misc supported system features
    PowerButtonPresent: BOOLEAN;
    SleepButtonPresent: BOOLEAN;
    LidPresent: BOOLEAN;
    SystemS1: BOOLEAN;
    SystemS2: BOOLEAN;
    SystemS3: BOOLEAN;
    SystemS4: BOOLEAN; // hibernate
    SystemS5: BOOLEAN; // off
    HiberFilePresent: BOOLEAN;
    FullWake: BOOLEAN;
    VideoDimPresent: BOOLEAN;
    ApmPresent: BOOLEAN;
    UpsPresent: BOOLEAN;
    // Processors
    ThermalControl: BOOLEAN;
    ProcessorThrottle: BOOLEAN;
    ProcessorMinThrottle: BYTE;
    ProcessorMaxThrottle: BYTE;
    spare2: array [0..4 - 1] of BYTE;
    // Disk
    DiskSpinDown: BOOLEAN;
    spare3: array [0..8 - 1] of BYTE;
    // System Battery
    SystemBatteriesPresent: BOOLEAN;
    BatteriesAreShortTerm: BOOLEAN;
    BatteryScale: array [0..3 - 1] of BATTERY_REPORTING_SCALE;
    // Wake
    AcOnLineWake: SYSTEM_POWER_STATE;
    SoftLidWake: SYSTEM_POWER_STATE;
    RtcWake: SYSTEM_POWER_STATE;
    MinDeviceWakeState: SYSTEM_POWER_STATE; // note this may change on driver load
    DefaultLowLatencyWake: SYSTEM_POWER_STATE;
  end;
  {$EXTERNALSYM SYSTEM_POWER_CAPABILITIES}
  TSystemPowerCapabilities = SYSTEM_POWER_CAPABILITIES;
  PSystemPowerCapabilities = PSYSTEM_POWER_CAPABILITIES;

  PSYSTEM_BATTERY_STATE = ^SYSTEM_BATTERY_STATE;
  {$EXTERNALSYM PSYSTEM_BATTERY_STATE}
  SYSTEM_BATTERY_STATE = record
    AcOnLine: BOOLEAN;
    BatteryPresent: BOOLEAN;
    Charging: BOOLEAN;
    Discharging: BOOLEAN;
    Spare1: array [0..3] of BOOLEAN;
    MaxCapacity: DWORD;
    RemainingCapacity: DWORD;
    Rate: DWORD;
    EstimatedTime: DWORD;
    DefaultAlert1: DWORD;
    DefaultAlert2: DWORD;
  end;
  {$EXTERNALSYM SYSTEM_BATTERY_STATE}
  TSystemBatteryState = SYSTEM_BATTERY_STATE;
  PSystemBatteryState = PSYSTEM_BATTERY_STATE;

//
// Image Format
//

// #include "pshpack4.h"                   // 4 byte packing is the default

const
  IMAGE_DOS_SIGNATURE    = $5A4D; // MZ
  {$EXTERNALSYM IMAGE_DOS_SIGNATURE}
  IMAGE_OS2_SIGNATURE    = $454E; // NE
  {$EXTERNALSYM IMAGE_OS2_SIGNATURE}
  IMAGE_OS2_SIGNATURE_LE = $454C; // LE
  {$EXTERNALSYM IMAGE_OS2_SIGNATURE_LE}
  IMAGE_VXD_SIGNATURE    = $454C; // LE
  {$EXTERNALSYM IMAGE_VXD_SIGNATURE}
  IMAGE_NT_SIGNATURE     = $00004550; // PE00
  {$EXTERNALSYM IMAGE_NT_SIGNATURE}

{$ALIGN 2}                                 // 16 bit headers are 2 byte packed

type

  // DOS .EXE header

  PIMAGE_DOS_HEADER = ^IMAGE_DOS_HEADER;
  {$EXTERNALSYM PIMAGE_DOS_HEADER}
  _IMAGE_DOS_HEADER = record
    e_magic: Word;     // Magic number
    e_cblp: Word;      // Bytes on last page of file
    e_cp: Word;        // Pages in file
    e_crlc: Word;      // Relocations
    e_cparhdr: Word;   // Size of header in paragraphs
    e_minalloc: Word;  // Minimum extra paragraphs needed
    e_maxalloc: Word;  // Maximum extra paragraphs needed
    e_ss: Word;        // Initial (relative) SS value
    e_sp: Word;        // Initial SP value
    e_csum: Word;      // Checksum
    e_ip: Word;        // Initial IP value
    e_cs: Word;        // Initial (relative) CS value
    e_lfarlc: Word;    // File address of relocation table
    e_ovno: Word;      // Overlay number
    e_res: array [0..3] of Word;    // Reserved words
    e_oemid: Word;     // OEM identifier (for e_oeminfo)
    e_oeminfo: Word;   // OEM information; e_oemid specific
    e_res2: array [0..9] of Word;  // Reserved words
    e_lfanew: Longint; // File address of new exe header
  end;
  {$EXTERNALSYM _IMAGE_DOS_HEADER}
  IMAGE_DOS_HEADER = _IMAGE_DOS_HEADER;
  {$EXTERNALSYM IMAGE_DOS_HEADER}
  TImageDosHeader = IMAGE_DOS_HEADER;
  PImageDosHeader = PIMAGE_DOS_HEADER;

  // OS/2 .EXE header

  PIMAGE_OS2_HEADER = ^IMAGE_OS2_HEADER;
  {$EXTERNALSYM PIMAGE_OS2_HEADER}
  _IMAGE_OS2_HEADER = record
    ne_magic: Word;        // Magic number
    ne_ver: AnsiChar;          // Version number
    ne_rev: AnsiChar;          // Revision number
    ne_enttab: Word;       // Offset of Entry Table
    ne_cbenttab: Word;     // Number of bytes in Entry Table
    ne_crc: Longint;       // Checksum of whole file
    ne_flags: Word;        // Flag word
    ne_autodata: Word;     // Automatic data segment number
    ne_heap: Word;         // Initial heap allocation
    ne_stack: Word;        // Initial stack allocation
    ne_csip: Longint;      // Initial CS:IP setting
    ne_sssp: Longint;      // Initial SS:SP setting
    ne_cseg: Word;         // Count of file segments
    ne_cmod: Word;         // Entries in Module Reference Table
    ne_cbnrestab: Word;    // Size of non-resident name table
    ne_segtab: Word;       // Offset of Segment Table
    ne_rsrctab: Word;      // Offset of Resource Table
    ne_restab: Word;       // Offset of resident name table
    ne_modtab: Word;       // Offset of Module Reference Table
    ne_imptab: Word;       // Offset of Imported Names Table
    ne_nrestab: Longint;   // Offset of Non-resident Names Table
    ne_cmovent: Word;      // Count of movable entries
    ne_align: Word;        // Segment alignment shift count
    ne_cres: Word;         // Count of resource segments
    ne_exetyp: Byte;       // Target Operating system
    ne_flagsothers: Byte;  // Other .EXE flags
    ne_pretthunks: Word;   // offset to return thunks
    ne_psegrefbytes: Word; // offset to segment ref. bytes
    ne_swaparea: Word;     // Minimum code swap area size
    ne_expver: Word;       // Expected Windows version number
  end;
  {$EXTERNALSYM _IMAGE_OS2_HEADER}
  IMAGE_OS2_HEADER = _IMAGE_OS2_HEADER;
  {$EXTERNALSYM IMAGE_OS2_HEADER}
  TImageOs2Header = IMAGE_OS2_HEADER;
  PImageOs2Header = PIMAGE_OS2_HEADER;

  // Windows VXD header

  PIMAGE_VXD_HEADER = ^IMAGE_VXD_HEADER;
  {$EXTERNALSYM PIMAGE_VXD_HEADER}
  _IMAGE_VXD_HEADER = record
    e32_magic: Word;         // Magic number
    e32_border: Byte;        // The byte ordering for the VXD
    e32_worder: Byte;        // The word ordering for the VXD
    e32_level: DWORD;        // The EXE format level for now = 0
    e32_cpu: Word;           // The CPU type
    e32_os: Word;            // The OS type
    e32_ver: DWORD;          // Module version
    e32_mflags: DWORD;       // Module flags
    e32_mpages: DWORD;       // Module # pages
    e32_startobj: DWORD;     // Object # for instruction pointer
    e32_eip: DWORD;          // Extended instruction pointer
    e32_stackobj: DWORD;     // Object # for stack pointer
    e32_esp: DWORD;          // Extended stack pointer
    e32_pagesize: DWORD;     // VXD page size
    e32_lastpagesize: DWORD; // Last page size in VXD
    e32_fixupsize: DWORD;    // Fixup section size
    e32_fixupsum: DWORD;     // Fixup section checksum
    e32_ldrsize: DWORD;      // Loader section size
    e32_ldrsum: DWORD;       // Loader section checksum
    e32_objtab: DWORD;       // Object table offset
    e32_objcnt: DWORD;       // Number of objects in module
    e32_objmap: DWORD;       // Object page map offset
    e32_itermap: DWORD;      // Object iterated data map offset
    e32_rsrctab: DWORD;      // Offset of Resource Table
    e32_rsrccnt: DWORD;      // Number of resource entries
    e32_restab: DWORD;       // Offset of resident name table
    e32_enttab: DWORD;       // Offset of Entry Table
    e32_dirtab: DWORD;       // Offset of Module Directive Table
    e32_dircnt: DWORD;       // Number of module directives
    e32_fpagetab: DWORD;     // Offset of Fixup Page Table
    e32_frectab: DWORD;      // Offset of Fixup Record Table
    e32_impmod: DWORD;       // Offset of Import Module Name Table
    e32_impmodcnt: DWORD;    // Number of entries in Import Module Name Table
    e32_impproc: DWORD;      // Offset of Import Procedure Name Table
    e32_pagesum: DWORD;      // Offset of Per-Page Checksum Table
    e32_datapage: DWORD;     // Offset of Enumerated Data Pages
    e32_preload: DWORD;      // Number of preload pages
    e32_nrestab: DWORD;      // Offset of Non-resident Names Table
    e32_cbnrestab: DWORD;    // Size of Non-resident Name Table
    e32_nressum: DWORD;      // Non-resident Name Table Checksum
    e32_autodata: DWORD;     // Object # for automatic data object
    e32_debuginfo: DWORD;    // Offset of the debugging information
    e32_debuglen: DWORD;     // The length of the debugging info. in bytes
    e32_instpreload: DWORD;  // Number of instance pages in preload section of VXD file
    e32_instdemand: DWORD;   // Number of instance pages in demand load section of VXD file
    e32_heapsize: DWORD;     // Size of heap - for 16-bit apps
    e32_res3: array [0..11] of Byte;      // Reserved words
    e32_winresoff: DWORD;
    e32_winreslen: DWORD;
    e32_devid: Word;         // Device ID for VxD
    e32_ddkver: Word;        // DDK version for VxD
  end;
  {$EXTERNALSYM _IMAGE_VXD_HEADER}
  IMAGE_VXD_HEADER = _IMAGE_VXD_HEADER;
  {$EXTERNALSYM IMAGE_VXD_HEADER}
  TImageVxdHeader = IMAGE_VXD_HEADER;
  PImageVxdHeader = PIMAGE_VXD_HEADER;

{$ALIGN 4}                                 // Back to 4 byte packing

//
// File header format.
//

  PIMAGE_FILE_HEADER = ^IMAGE_FILE_HEADER;
  {$EXTERNALSYM PIMAGE_FILE_HEADER}
  _IMAGE_FILE_HEADER = record
    Machine: WORD;
    NumberOfSections: WORD;
    TimeDateStamp: DWORD;
    PointerToSymbolTable: DWORD;
    NumberOfSymbols: DWORD;
    SizeOfOptionalHeader: WORD;
    Characteristics: WORD;
  end;
  {$EXTERNALSYM _IMAGE_FILE_HEADER}
  IMAGE_FILE_HEADER = _IMAGE_FILE_HEADER;
  {$EXTERNALSYM IMAGE_FILE_HEADER}
  TImageFileHeader = IMAGE_FILE_HEADER;
  PImageFileHeader = PIMAGE_FILE_HEADER;

const
  IMAGE_SIZEOF_FILE_HEADER = 20;
  {$EXTERNALSYM IMAGE_SIZEOF_FILE_HEADER}

  IMAGE_FILE_RELOCS_STRIPPED         = $0001; // Relocation info stripped from file.
  {$EXTERNALSYM IMAGE_FILE_RELOCS_STRIPPED}
  IMAGE_FILE_EXECUTABLE_IMAGE        = $0002; // File is executable  (i.e. no unresolved externel references).
  {$EXTERNALSYM IMAGE_FILE_EXECUTABLE_IMAGE}
  IMAGE_FILE_LINE_NUMS_STRIPPED      = $0004; // Line nunbers stripped from file.
  {$EXTERNALSYM IMAGE_FILE_LINE_NUMS_STRIPPED}
  IMAGE_FILE_LOCAL_SYMS_STRIPPED     = $0008; // Local symbols stripped from file.
  {$EXTERNALSYM IMAGE_FILE_LOCAL_SYMS_STRIPPED}
  IMAGE_FILE_AGGRESIVE_WS_TRIM       = $0010; // Agressively trim working set
  {$EXTERNALSYM IMAGE_FILE_AGGRESIVE_WS_TRIM}
  IMAGE_FILE_LARGE_ADDRESS_AWARE     = $0020; // App can handle >2gb addresses
  {$EXTERNALSYM IMAGE_FILE_LARGE_ADDRESS_AWARE}
  IMAGE_FILE_BYTES_REVERSED_LO       = $0080; // Bytes of machine word are reversed.
  {$EXTERNALSYM IMAGE_FILE_BYTES_REVERSED_LO}
  IMAGE_FILE_32BIT_MACHINE           = $0100; // 32 bit word machine.
  {$EXTERNALSYM IMAGE_FILE_32BIT_MACHINE}
  IMAGE_FILE_DEBUG_STRIPPED          = $0200; // Debugging info stripped from file in .DBG file
  {$EXTERNALSYM IMAGE_FILE_DEBUG_STRIPPED}
  IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP = $0400; // If Image is on removable media, copy and run from the swap file.
  {$EXTERNALSYM IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP}
  IMAGE_FILE_NET_RUN_FROM_SWAP       = $0800; // If Image is on Net, copy and run from the swap file.
  {$EXTERNALSYM IMAGE_FILE_NET_RUN_FROM_SWAP}
  IMAGE_FILE_SYSTEM                  = $1000; // System File.
  {$EXTERNALSYM IMAGE_FILE_SYSTEM}
  IMAGE_FILE_DLL                     = $2000; // File is a DLL.
  {$EXTERNALSYM IMAGE_FILE_DLL}
  IMAGE_FILE_UP_SYSTEM_ONLY          = $4000; // File should only be run on a UP machine
  {$EXTERNALSYM IMAGE_FILE_UP_SYSTEM_ONLY}
  IMAGE_FILE_BYTES_REVERSED_HI       = $8000; // Bytes of machine word are reversed.
  {$EXTERNALSYM IMAGE_FILE_BYTES_REVERSED_HI}

  IMAGE_FILE_MACHINE_UNKNOWN   = 0;
  {$EXTERNALSYM IMAGE_FILE_MACHINE_UNKNOWN}
  IMAGE_FILE_MACHINE_I386      = $014c; // Intel 386.
  {$EXTERNALSYM IMAGE_FILE_MACHINE_I386}
  IMAGE_FILE_MACHINE_R3000     = $0162; // MIPS little-endian, 0x160 big-endian
  {$EXTERNALSYM IMAGE_FILE_MACHINE_R3000}
  IMAGE_FILE_MACHINE_R4000     = $0166; // MIPS little-endian
  {$EXTERNALSYM IMAGE_FILE_MACHINE_R4000}
  IMAGE_FILE_MACHINE_R10000    = $0168; // MIPS little-endian
  {$EXTERNALSYM IMAGE_FILE_MACHINE_R10000}
  IMAGE_FILE_MACHINE_WCEMIPSV2 = $0169; // MIPS little-endian WCE v2
  {$EXTERNALSYM IMAGE_FILE_MACHINE_WCEMIPSV2}
  IMAGE_FILE_MACHINE_ALPHA     = $0184; // Alpha_AXP
  {$EXTERNALSYM IMAGE_FILE_MACHINE_ALPHA}
  IMAGE_FILE_MACHINE_SH3       = $01a2; // SH3 little-endian
  {$EXTERNALSYM IMAGE_FILE_MACHINE_SH3}
  IMAGE_FILE_MACHINE_SH3DSP    = $01a3;
  {$EXTERNALSYM IMAGE_FILE_MACHINE_SH3DSP}
  IMAGE_FILE_MACHINE_SH3E      = $01a4; // SH3E little-endian
  {$EXTERNALSYM IMAGE_FILE_MACHINE_SH3E}
  IMAGE_FILE_MACHINE_SH4       = $01a6; // SH4 little-endian
  {$EXTERNALSYM IMAGE_FILE_MACHINE_SH4}
  IMAGE_FILE_MACHINE_SH5       = $01a8; // SH5
  {$EXTERNALSYM IMAGE_FILE_MACHINE_SH5}
  IMAGE_FILE_MACHINE_ARM       = $01c0; // ARM Little-Endian
  {$EXTERNALSYM IMAGE_FILE_MACHINE_ARM}
  IMAGE_FILE_MACHINE_THUMB     = $01c2;
  {$EXTERNALSYM IMAGE_FILE_MACHINE_THUMB}
  IMAGE_FILE_MACHINE_AM33      = $01d3;
  {$EXTERNALSYM IMAGE_FILE_MACHINE_AM33}
  IMAGE_FILE_MACHINE_POWERPC   = $01F0; // IBM PowerPC Little-Endian
  {$EXTERNALSYM IMAGE_FILE_MACHINE_POWERPC}
  IMAGE_FILE_MACHINE_POWERPCFP = $01f1;
  {$EXTERNALSYM IMAGE_FILE_MACHINE_POWERPCFP}
  IMAGE_FILE_MACHINE_IA64      = $0200; // Intel 64
  {$EXTERNALSYM IMAGE_FILE_MACHINE_IA64}
  IMAGE_FILE_MACHINE_MIPS16    = $0266; // MIPS
  {$EXTERNALSYM IMAGE_FILE_MACHINE_MIPS16}
  IMAGE_FILE_MACHINE_ALPHA64   = $0284; // ALPHA64
  {$EXTERNALSYM IMAGE_FILE_MACHINE_ALPHA64}
  IMAGE_FILE_MACHINE_MIPSFPU   = $0366; // MIPS
  {$EXTERNALSYM IMAGE_FILE_MACHINE_MIPSFPU}
  IMAGE_FILE_MACHINE_MIPSFPU16 = $0466; // MIPS
  {$EXTERNALSYM IMAGE_FILE_MACHINE_MIPSFPU16}
  IMAGE_FILE_MACHINE_AXP64     = IMAGE_FILE_MACHINE_ALPHA64;
  {$EXTERNALSYM IMAGE_FILE_MACHINE_AXP64}
  IMAGE_FILE_MACHINE_TRICORE   = $0520; // Infineon
  {$EXTERNALSYM IMAGE_FILE_MACHINE_TRICORE}
  IMAGE_FILE_MACHINE_CEF       = $0CEF;
  {$EXTERNALSYM IMAGE_FILE_MACHINE_CEF}
  IMAGE_FILE_MACHINE_EBC       = $0EBC; // EFI Byte Code
  {$EXTERNALSYM IMAGE_FILE_MACHINE_EBC}
  IMAGE_FILE_MACHINE_AMD64     = $8664; // AMD64 (K8)
  {$EXTERNALSYM IMAGE_FILE_MACHINE_AMD64}
  IMAGE_FILE_MACHINE_M32R      = $9041; // M32R little-endian
  {$EXTERNALSYM IMAGE_FILE_MACHINE_M32R}
  IMAGE_FILE_MACHINE_CEE       = $C0EE;
  {$EXTERNALSYM IMAGE_FILE_MACHINE_CEE}

//
// Directory format.
//

type
  PIMAGE_DATA_DIRECTORY = ^IMAGE_DATA_DIRECTORY;
  {$EXTERNALSYM PIMAGE_DATA_DIRECTORY}
  _IMAGE_DATA_DIRECTORY = record
    VirtualAddress: DWORD;
    Size: DWORD;
  end;
  {$EXTERNALSYM _IMAGE_DATA_DIRECTORY}
  IMAGE_DATA_DIRECTORY = _IMAGE_DATA_DIRECTORY;
  {$EXTERNALSYM IMAGE_DATA_DIRECTORY}
  TImageDataDirectory = IMAGE_DATA_DIRECTORY;
  PImageDataDirectory = PIMAGE_DATA_DIRECTORY;

const
  IMAGE_NUMBEROF_DIRECTORY_ENTRIES = 16;
  {$EXTERNALSYM IMAGE_NUMBEROF_DIRECTORY_ENTRIES}

//
// Optional header format.
//

type
  PIMAGE_OPTIONAL_HEADER32 = ^IMAGE_OPTIONAL_HEADER32;
  {$EXTERNALSYM PIMAGE_OPTIONAL_HEADER32}
  _IMAGE_OPTIONAL_HEADER = record
    //
    // Standard fields.
    //
    Magic: Word;
    MajorLinkerVersion: Byte;
    MinorLinkerVersion: Byte;
    SizeOfCode: DWORD;
    SizeOfInitializedData: DWORD;
    SizeOfUninitializedData: DWORD;
    AddressOfEntryPoint: DWORD;
    BaseOfCode: DWORD;
    BaseOfData: DWORD;
    //
    // NT additional fields.
    //
    ImageBase: DWORD;
    SectionAlignment: DWORD;
    FileAlignment: DWORD;
    MajorOperatingSystemVersion: Word;
    MinorOperatingSystemVersion: Word;
    MajorImageVersion: Word;
    MinorImageVersion: Word;
    MajorSubsystemVersion: Word;
    MinorSubsystemVersion: Word;
    Win32VersionValue: DWORD;
    SizeOfImage: DWORD;
    SizeOfHeaders: DWORD;
    CheckSum: DWORD;
    Subsystem: Word;
    DllCharacteristics: Word;
    SizeOfStackReserve: DWORD;
    SizeOfStackCommit: DWORD;
    SizeOfHeapReserve: DWORD;
    SizeOfHeapCommit: DWORD;
    LoaderFlags: DWORD;
    NumberOfRvaAndSizes: DWORD;
    DataDirectory: array [0..IMAGE_NUMBEROF_DIRECTORY_ENTRIES - 1] of IMAGE_DATA_DIRECTORY;
  end;
  {$EXTERNALSYM _IMAGE_OPTIONAL_HEADER}
  IMAGE_OPTIONAL_HEADER32 = _IMAGE_OPTIONAL_HEADER;
  {$EXTERNALSYM IMAGE_OPTIONAL_HEADER32}
  TImageOptionalHeader32 = IMAGE_OPTIONAL_HEADER32;
  PImageOptionalHeader32 = PIMAGE_OPTIONAL_HEADER32;

  PIMAGE_ROM_OPTIONAL_HEADER = ^IMAGE_ROM_OPTIONAL_HEADER;
  {$EXTERNALSYM PIMAGE_ROM_OPTIONAL_HEADER}
  _IMAGE_ROM_OPTIONAL_HEADER = record
    Magic: Word;
    MajorLinkerVersion: Byte;
    MinorLinkerVersion: Byte;
    SizeOfCode: DWORD;
    SizeOfInitializedData: DWORD;
    SizeOfUninitializedData: DWORD;
    AddressOfEntryPoint: DWORD;
    BaseOfCode: DWORD;
    BaseOfData: DWORD;
    BaseOfBss: DWORD;
    GprMask: DWORD;
    CprMask: array [0..3] of DWORD;
    GpValue: DWORD;
  end;
  {$EXTERNALSYM _IMAGE_ROM_OPTIONAL_HEADER}
  IMAGE_ROM_OPTIONAL_HEADER = _IMAGE_ROM_OPTIONAL_HEADER;
  {$EXTERNALSYM IMAGE_ROM_OPTIONAL_HEADER}
  TImageRomOptionalHeader = IMAGE_ROM_OPTIONAL_HEADER;
  PImageRomOptionalHeader = PIMAGE_ROM_OPTIONAL_HEADER;

  PIMAGE_OPTIONAL_HEADER64 = ^IMAGE_OPTIONAL_HEADER64;
  {$EXTERNALSYM PIMAGE_OPTIONAL_HEADER64}
  _IMAGE_OPTIONAL_HEADER64 = record
    Magic: Word;
    MajorLinkerVersion: Byte;
    MinorLinkerVersion: Byte;
    SizeOfCode: DWORD;
    SizeOfInitializedData: DWORD;
    SizeOfUninitializedData: DWORD;
    AddressOfEntryPoint: DWORD;
    BaseOfCode: DWORD;
    ImageBase: Int64;
    SectionAlignment: DWORD;
    FileAlignment: DWORD;
    MajorOperatingSystemVersion: Word;
    MinorOperatingSystemVersion: Word;
    MajorImageVersion: Word;
    MinorImageVersion: Word;
    MajorSubsystemVersion: Word;
    MinorSubsystemVersion: Word;
    Win32VersionValue: DWORD;
    SizeOfImage: DWORD;
    SizeOfHeaders: DWORD;
    CheckSum: DWORD;
    Subsystem: Word;
    DllCharacteristics: Word;
    SizeOfStackReserve: Int64;
    SizeOfStackCommit: Int64;
    SizeOfHeapReserve: Int64;
    SizeOfHeapCommit: Int64;
    LoaderFlags: DWORD;
    NumberOfRvaAndSizes: DWORD;
    DataDirectory: array [0..IMAGE_NUMBEROF_DIRECTORY_ENTRIES - 1] of IMAGE_DATA_DIRECTORY;
  end;
  {$EXTERNALSYM _IMAGE_OPTIONAL_HEADER64}
  IMAGE_OPTIONAL_HEADER64 = _IMAGE_OPTIONAL_HEADER64;
  {$EXTERNALSYM IMAGE_OPTIONAL_HEADER64}
  TImageOptionalHeader64 = IMAGE_OPTIONAL_HEADER64;
  PImageOptionalHeader64 = PIMAGE_OPTIONAL_HEADER64;

const
  IMAGE_SIZEOF_ROM_OPTIONAL_HEADER  = 56;
  {$EXTERNALSYM IMAGE_SIZEOF_ROM_OPTIONAL_HEADER}
  IMAGE_SIZEOF_STD_OPTIONAL_HEADER  = 28;
  {$EXTERNALSYM IMAGE_SIZEOF_STD_OPTIONAL_HEADER}
  IMAGE_SIZEOF_NT_OPTIONAL32_HEADER = 224;
  {$EXTERNALSYM IMAGE_SIZEOF_NT_OPTIONAL32_HEADER}
  IMAGE_SIZEOF_NT_OPTIONAL64_HEADER = 240;
  {$EXTERNALSYM IMAGE_SIZEOF_NT_OPTIONAL64_HEADER}

  IMAGE_NT_OPTIONAL_HDR32_MAGIC = $10b;
  {$EXTERNALSYM IMAGE_NT_OPTIONAL_HDR32_MAGIC}
  IMAGE_NT_OPTIONAL_HDR64_MAGIC = $20b;
  {$EXTERNALSYM IMAGE_NT_OPTIONAL_HDR64_MAGIC}
  IMAGE_ROM_OPTIONAL_HDR_MAGIC  = $107;
  {$EXTERNALSYM IMAGE_ROM_OPTIONAL_HDR_MAGIC}

type
  IMAGE_OPTIONAL_HEADER = IMAGE_OPTIONAL_HEADER32;
  {$EXTERNALSYM IMAGE_OPTIONAL_HEADER}
  PIMAGE_OPTIONAL_HEADER = PIMAGE_OPTIONAL_HEADER32;
  {$EXTERNALSYM PIMAGE_OPTIONAL_HEADER}

const
  IMAGE_SIZEOF_NT_OPTIONAL_HEADER = IMAGE_SIZEOF_NT_OPTIONAL32_HEADER;
  {$EXTERNALSYM IMAGE_SIZEOF_NT_OPTIONAL_HEADER}
  IMAGE_NT_OPTIONAL_HDR_MAGIC     = IMAGE_NT_OPTIONAL_HDR32_MAGIC;
  {$EXTERNALSYM IMAGE_NT_OPTIONAL_HDR_MAGIC}

type
  PIMAGE_NT_HEADERS64 = ^IMAGE_NT_HEADERS64;
  {$EXTERNALSYM PIMAGE_NT_HEADERS64}
  _IMAGE_NT_HEADERS64 = record
    Signature: DWORD;
    FileHeader: IMAGE_FILE_HEADER;
    OptionalHeader: IMAGE_OPTIONAL_HEADER64;
  end;
  {$EXTERNALSYM _IMAGE_NT_HEADERS64}
  IMAGE_NT_HEADERS64 = _IMAGE_NT_HEADERS64;
  {$EXTERNALSYM IMAGE_NT_HEADERS64}
  TImageNtHeaders64 = IMAGE_NT_HEADERS64;
  PImageNtHeaders64 = PIMAGE_NT_HEADERS64;

  PIMAGE_NT_HEADERS32 = ^IMAGE_NT_HEADERS32;
  {$EXTERNALSYM PIMAGE_NT_HEADERS32}
  _IMAGE_NT_HEADERS = record
    Signature: DWORD;
    FileHeader: IMAGE_FILE_HEADER;
    OptionalHeader: IMAGE_OPTIONAL_HEADER32;
  end;
  {$EXTERNALSYM _IMAGE_NT_HEADERS}
  IMAGE_NT_HEADERS32 = _IMAGE_NT_HEADERS;
  {$EXTERNALSYM IMAGE_NT_HEADERS32}
  TImageNtHeaders32 = IMAGE_NT_HEADERS32;
  PImageNtHeaders32 = PIMAGE_NT_HEADERS32;

  PIMAGE_ROM_HEADERS = ^IMAGE_ROM_HEADERS;
  {$EXTERNALSYM PIMAGE_ROM_HEADERS}
  _IMAGE_ROM_HEADERS = record
    FileHeader: IMAGE_FILE_HEADER;
    OptionalHeader: IMAGE_ROM_OPTIONAL_HEADER;
  end;
  {$EXTERNALSYM _IMAGE_ROM_HEADERS}
  IMAGE_ROM_HEADERS = _IMAGE_ROM_HEADERS;
  {$EXTERNALSYM IMAGE_ROM_HEADERS}
  TImageRomHeaders = IMAGE_ROM_HEADERS;
  PImageRomHeaders = PIMAGE_ROM_HEADERS;

  IMAGE_NT_HEADERS = IMAGE_NT_HEADERS32;
  {$EXTERNALSYM IMAGE_NT_HEADERS}
  PIMAGE_NT_HEADERS = PIMAGE_NT_HEADERS32;
  {$EXTERNALSYM PIMAGE_NT_HEADERS}

  PImageNtHeaders = PIMAGE_NT_HEADERS;

// Subsystem Values

const
  IMAGE_SUBSYSTEM_UNKNOWN                 = 0; // Unknown subsystem.
  {$EXTERNALSYM IMAGE_SUBSYSTEM_UNKNOWN}
  IMAGE_SUBSYSTEM_NATIVE                  = 1; // Image doesn't require a subsystem.
  {$EXTERNALSYM IMAGE_SUBSYSTEM_NATIVE}
  IMAGE_SUBSYSTEM_WINDOWS_GUI             = 2; // Image runs in the Windows GUI subsystem.
  {$EXTERNALSYM IMAGE_SUBSYSTEM_WINDOWS_GUI}
  IMAGE_SUBSYSTEM_WINDOWS_CUI             = 3; // Image runs in the Windows character subsystem.
  {$EXTERNALSYM IMAGE_SUBSYSTEM_WINDOWS_CUI}
  IMAGE_SUBSYSTEM_OS2_CUI                 = 5; // image runs in the OS/2 character subsystem.
  {$EXTERNALSYM IMAGE_SUBSYSTEM_OS2_CUI}
  IMAGE_SUBSYSTEM_POSIX_CUI               = 7; // image runs in the Posix character subsystem.
  {$EXTERNALSYM IMAGE_SUBSYSTEM_POSIX_CUI}
  IMAGE_SUBSYSTEM_NATIVE_WINDOWS          = 8; // image is a native Win9x driver.
  {$EXTERNALSYM IMAGE_SUBSYSTEM_NATIVE_WINDOWS}
  IMAGE_SUBSYSTEM_WINDOWS_CE_GUI          = 9; // Image runs in the Windows CE subsystem.
  {$EXTERNALSYM IMAGE_SUBSYSTEM_WINDOWS_CE_GUI}
  IMAGE_SUBSYSTEM_EFI_APPLICATION         = 10;
  {$EXTERNALSYM IMAGE_SUBSYSTEM_EFI_APPLICATION}
  IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER = 11;
  {$EXTERNALSYM IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER}
  IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER      = 12;
  {$EXTERNALSYM IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER}
  IMAGE_SUBSYSTEM_EFI_ROM                 = 13;
  {$EXTERNALSYM IMAGE_SUBSYSTEM_EFI_ROM}
  IMAGE_SUBSYSTEM_XBOX                    = 14;
  {$EXTERNALSYM IMAGE_SUBSYSTEM_XBOX}
  IMAGE_SUBSYSTEM_WINDOWS_BOOT_APPLICATION= 16;
  {$EXTERNALSYM IMAGE_SUBSYSTEM_WINDOWS_BOOT_APPLICATION}

// DllCharacteristics Entries

//      IMAGE_LIBRARY_PROCESS_INIT           0x0001     // Reserved.
//      IMAGE_LIBRARY_PROCESS_TERM           0x0002     // Reserved.
//      IMAGE_LIBRARY_THREAD_INIT            0x0004     // Reserved.
//      IMAGE_LIBRARY_THREAD_TERM            0x0008     // Reserved.
  IMAGE_DLLCHARACTERISTICS_NO_ISOLATION = $0200;    // Image understands isolation and doesn't want it
  {$EXTERNALSYM IMAGE_DLLCHARACTERISTICS_NO_ISOLATION}
  IMAGE_DLLCHARACTERISTICS_NO_SEH  = $0400; // Image does not use SEH.  No SE handler may reside in this image
  {$EXTERNALSYM IMAGE_DLLCHARACTERISTICS_NO_SEH}
  IMAGE_DLLCHARACTERISTICS_NO_BIND = $0800; // Do not bind this image.
  {$EXTERNALSYM IMAGE_DLLCHARACTERISTICS_NO_BIND}

//                                           0x1000     // Reserved.

  IMAGE_DLLCHARACTERISTICS_WDM_DRIVER = $2000; // Driver uses WDM model
  {$EXTERNALSYM IMAGE_DLLCHARACTERISTICS_WDM_DRIVER}

//                                           0x4000     // Reserved.

  IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE = $8000;
  {$EXTERNALSYM IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE}

// Directory Entries

  IMAGE_DIRECTORY_ENTRY_EXPORT    = 0; // Export Directory
  {$EXTERNALSYM IMAGE_DIRECTORY_ENTRY_EXPORT}
  IMAGE_DIRECTORY_ENTRY_IMPORT    = 1; // Import Directory
  {$EXTERNALSYM IMAGE_DIRECTORY_ENTRY_IMPORT}
  IMAGE_DIRECTORY_ENTRY_RESOURCE  = 2; // Resource Directory
  {$EXTERNALSYM IMAGE_DIRECTORY_ENTRY_RESOURCE}
  IMAGE_DIRECTORY_ENTRY_EXCEPTION = 3; // Exception Directory
  {$EXTERNALSYM IMAGE_DIRECTORY_ENTRY_EXCEPTION}
  IMAGE_DIRECTORY_ENTRY_SECURITY  = 4; // Security Directory
  {$EXTERNALSYM IMAGE_DIRECTORY_ENTRY_SECURITY}
  IMAGE_DIRECTORY_ENTRY_BASERELOC = 5; // Base Relocation Table
  {$EXTERNALSYM IMAGE_DIRECTORY_ENTRY_BASERELOC}
  IMAGE_DIRECTORY_ENTRY_DEBUG     = 6; // Debug Directory
  {$EXTERNALSYM IMAGE_DIRECTORY_ENTRY_DEBUG}

//      IMAGE_DIRECTORY_ENTRY_COPYRIGHT       7   // (X86 usage)

  IMAGE_DIRECTORY_ENTRY_ARCHITECTURE   = 7; // Architecture Specific Data
  {$EXTERNALSYM IMAGE_DIRECTORY_ENTRY_ARCHITECTURE}
  IMAGE_DIRECTORY_ENTRY_GLOBALPTR      = 8; // RVA of GP
  {$EXTERNALSYM IMAGE_DIRECTORY_ENTRY_GLOBALPTR}
  IMAGE_DIRECTORY_ENTRY_TLS            = 9; // TLS Directory
  {$EXTERNALSYM IMAGE_DIRECTORY_ENTRY_TLS}
  IMAGE_DIRECTORY_ENTRY_LOAD_CONFIG    = 10; // Load Configuration Directory
  {$EXTERNALSYM IMAGE_DIRECTORY_ENTRY_LOAD_CONFIG}
  IMAGE_DIRECTORY_ENTRY_BOUND_IMPORT   = 11; // Bound Import Directory in headers
  {$EXTERNALSYM IMAGE_DIRECTORY_ENTRY_BOUND_IMPORT}
  IMAGE_DIRECTORY_ENTRY_IAT            = 12; // Import Address Table
  {$EXTERNALSYM IMAGE_DIRECTORY_ENTRY_IAT}
  IMAGE_DIRECTORY_ENTRY_DELAY_IMPORT   = 13; // Delay Load Import Descriptors
  {$EXTERNALSYM IMAGE_DIRECTORY_ENTRY_DELAY_IMPORT}
  IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR = 14; // COM Runtime descriptor
  {$EXTERNALSYM IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR}

//
// Non-COFF Object file header
//

type
  PAnonObjectHeader = ^ANON_OBJECT_HEADER;
  ANON_OBJECT_HEADER = record
    Sig1: Word;        // Must be IMAGE_FILE_MACHINE_UNKNOWN
    Sig2: Word;        // Must be 0xffff
    Version: Word;     // >= 1 (implies the CLSID field is present)
    Machine: Word;
    TimeDateStamp: DWORD;
    ClassID: CLSID;    // Used to invoke CoCreateInstance
    SizeOfData: DWORD; // Size of data that follows the header
  end;
  {$EXTERNALSYM ANON_OBJECT_HEADER}
  TAnonObjectHeader = ANON_OBJECT_HEADER;

//
// Section header format.
//

const
  IMAGE_SIZEOF_SHORT_NAME = 8;
  {$EXTERNALSYM IMAGE_SIZEOF_SHORT_NAME}

type
  TImgSecHdrMisc = record
    case Integer of
      0: (PhysicalAddress: DWORD);
      1: (VirtualSize: DWORD);
  end;

  PIMAGE_SECTION_HEADER = ^IMAGE_SECTION_HEADER;
  {$EXTERNALSYM PIMAGE_SECTION_HEADER}
  _IMAGE_SECTION_HEADER = record
    Name: array [0..IMAGE_SIZEOF_SHORT_NAME - 1] of BYTE;
    Misc: TImgSecHdrMisc;
    VirtualAddress: DWORD;
    SizeOfRawData: DWORD;
    PointerToRawData: DWORD;
    PointerToRelocations: DWORD;
    PointerToLinenumbers: DWORD;
    NumberOfRelocations: WORD;
    NumberOfLinenumbers: WORD;
    Characteristics: DWORD;
  end;
  {$EXTERNALSYM _IMAGE_SECTION_HEADER}
  IMAGE_SECTION_HEADER = _IMAGE_SECTION_HEADER;
  {$EXTERNALSYM IMAGE_SECTION_HEADER}
  TImageSectionHeader = IMAGE_SECTION_HEADER;
  PImageSectionHeader = PIMAGE_SECTION_HEADER;

// IMAGE_FIRST_SECTION doesn't need 32/64 versions since the file header is the same either way.

function IMAGE_FIRST_SECTION(NtHeader: PImageNtHeaders): PImageSectionHeader;
{$EXTERNALSYM IMAGE_FIRST_SECTION}

const
  IMAGE_SIZEOF_SECTION_HEADER = 40;
  {$EXTERNALSYM IMAGE_SIZEOF_SECTION_HEADER}

//
// Section characteristics.
//
//      IMAGE_SCN_TYPE_REG                   0x00000000  // Reserved.
//      IMAGE_SCN_TYPE_DSECT                 0x00000001  // Reserved.
//      IMAGE_SCN_TYPE_NOLOAD                0x00000002  // Reserved.
//      IMAGE_SCN_TYPE_GROUP                 0x00000004  // Reserved.

  IMAGE_SCN_TYPE_NO_PAD = $00000008; // Reserved.
  {$EXTERNALSYM IMAGE_SCN_TYPE_NO_PAD}

//      IMAGE_SCN_TYPE_COPY                  0x00000010  // Reserved.

  IMAGE_SCN_CNT_CODE               = $00000020; // Section contains code.
  {$EXTERNALSYM IMAGE_SCN_CNT_CODE}
  IMAGE_SCN_CNT_INITIALIZED_DATA   = $00000040; // Section contains initialized data.
  {$EXTERNALSYM IMAGE_SCN_CNT_INITIALIZED_DATA}
  IMAGE_SCN_CNT_UNINITIALIZED_DATA = $00000080; // Section contains uninitialized data.
  {$EXTERNALSYM IMAGE_SCN_CNT_UNINITIALIZED_DATA}

  IMAGE_SCN_LNK_OTHER = $00000100; // Reserved.
  {$EXTERNALSYM IMAGE_SCN_LNK_OTHER}
  IMAGE_SCN_LNK_INFO  = $00000200; // Section contains comments or some other type of information.
  {$EXTERNALSYM IMAGE_SCN_LNK_INFO}

//      IMAGE_SCN_TYPE_OVER                  0x00000400  // Reserved.

  IMAGE_SCN_LNK_REMOVE = $00000800; // Section contents will not become part of image.
  {$EXTERNALSYM IMAGE_SCN_LNK_REMOVE}
  IMAGE_SCN_LNK_COMDAT = $00001000; // Section contents comdat.
  {$EXTERNALSYM IMAGE_SCN_LNK_COMDAT}

//                                           0x00002000  // Reserved.
//      IMAGE_SCN_MEM_PROTECTED - Obsolete   0x00004000

  IMAGE_SCN_NO_DEFER_SPEC_EXC = $00004000; // Reset speculative exceptions handling bits in the TLB entries for this section.
  {$EXTERNALSYM IMAGE_SCN_NO_DEFER_SPEC_EXC}
  IMAGE_SCN_GPREL             = $00008000; // Section content can be accessed relative to GP
  {$EXTERNALSYM IMAGE_SCN_GPREL}
  IMAGE_SCN_MEM_FARDATA       = $00008000;
  {$EXTERNALSYM IMAGE_SCN_MEM_FARDATA}

//      IMAGE_SCN_MEM_SYSHEAP  - Obsolete    0x00010000

  IMAGE_SCN_MEM_PURGEABLE = $00020000;
  {$EXTERNALSYM IMAGE_SCN_MEM_PURGEABLE}
  IMAGE_SCN_MEM_16BIT     = $00020000;
  {$EXTERNALSYM IMAGE_SCN_MEM_16BIT}
  IMAGE_SCN_MEM_LOCKED    = $00040000;
  {$EXTERNALSYM IMAGE_SCN_MEM_LOCKED}
  IMAGE_SCN_MEM_PRELOAD   = $00080000;
  {$EXTERNALSYM IMAGE_SCN_MEM_PRELOAD}

  IMAGE_SCN_ALIGN_1BYTES    = $00100000;
  {$EXTERNALSYM IMAGE_SCN_ALIGN_1BYTES}
  IMAGE_SCN_ALIGN_2BYTES    = $00200000;
  {$EXTERNALSYM IMAGE_SCN_ALIGN_2BYTES}
  IMAGE_SCN_ALIGN_4BYTES    = $00300000;
  {$EXTERNALSYM IMAGE_SCN_ALIGN_4BYTES}
  IMAGE_SCN_ALIGN_8BYTES    = $00400000;
  {$EXTERNALSYM IMAGE_SCN_ALIGN_8BYTES}
  IMAGE_SCN_ALIGN_16BYTES   = $00500000; // Default alignment if no others are specified.
  {$EXTERNALSYM IMAGE_SCN_ALIGN_16BYTES}
  IMAGE_SCN_ALIGN_32BYTES   = $00600000;
  {$EXTERNALSYM IMAGE_SCN_ALIGN_32BYTES}
  IMAGE_SCN_ALIGN_64BYTES   = $00700000;
  {$EXTERNALSYM IMAGE_SCN_ALIGN_64BYTES}
  IMAGE_SCN_ALIGN_128BYTES  = $00800000;
  {$EXTERNALSYM IMAGE_SCN_ALIGN_128BYTES}
  IMAGE_SCN_ALIGN_256BYTES  = $00900000;
  {$EXTERNALSYM IMAGE_SCN_ALIGN_256BYTES}
  IMAGE_SCN_ALIGN_512BYTES  = $00A00000;
  {$EXTERNALSYM IMAGE_SCN_ALIGN_512BYTES}
  IMAGE_SCN_ALIGN_1024BYTES = $00B00000;
  {$EXTERNALSYM IMAGE_SCN_ALIGN_1024BYTES}
  IMAGE_SCN_ALIGN_2048BYTES = $00C00000;
  {$EXTERNALSYM IMAGE_SCN_ALIGN_2048BYTES}
  IMAGE_SCN_ALIGN_4096BYTES = $00D00000;
  {$EXTERNALSYM IMAGE_SCN_ALIGN_4096BYTES}
  IMAGE_SCN_ALIGN_8192BYTES = $00E00000;
  {$EXTERNALSYM IMAGE_SCN_ALIGN_8192BYTES}

// Unused                                    0x00F00000

  IMAGE_SCN_ALIGN_MASK = $00F00000;
  {$EXTERNALSYM IMAGE_SCN_ALIGN_MASK}

  IMAGE_SCN_LNK_NRELOC_OVFL = $01000000; // Section contains extended relocations.
  {$EXTERNALSYM IMAGE_SCN_LNK_NRELOC_OVFL}
  IMAGE_SCN_MEM_DISCARDABLE = $02000000; // Section can be discarded.
  {$EXTERNALSYM IMAGE_SCN_MEM_DISCARDABLE}
  IMAGE_SCN_MEM_NOT_CACHED  = $04000000; // Section is not cachable.
  {$EXTERNALSYM IMAGE_SCN_MEM_NOT_CACHED}
  IMAGE_SCN_MEM_NOT_PAGED   = $08000000; // Section is not pageable.
  {$EXTERNALSYM IMAGE_SCN_MEM_NOT_PAGED}
  IMAGE_SCN_MEM_SHARED      = $10000000; // Section is shareable.
  {$EXTERNALSYM IMAGE_SCN_MEM_SHARED}
  IMAGE_SCN_MEM_EXECUTE     = $20000000; // Section is executable.
  {$EXTERNALSYM IMAGE_SCN_MEM_EXECUTE}
  IMAGE_SCN_MEM_READ        = $40000000; // Section is readable.
  {$EXTERNALSYM IMAGE_SCN_MEM_READ}
  IMAGE_SCN_MEM_WRITE       = DWORD($80000000); // Section is writeable.
  {$EXTERNALSYM IMAGE_SCN_MEM_WRITE}

//
// TLS Chaacteristic Flags
//

  IMAGE_SCN_SCALE_INDEX = $00000001; // Tls index is scaled
  {$EXTERNALSYM IMAGE_SCN_SCALE_INDEX}

// #include "pshpack2.h"                       // Symbols, relocs, and linenumbers are 2 byte packed

//
// Symbol format.
//

type
  TImageSymbolN = record
    case Integer of
      0: (
        ShortName: array [0..7] of BYTE);
      1: (
        Short: DWORD;     // if 0, use LongName
        Long: DWORD);     // offset into string table
      2: (
        LongName: array [0..1] of DWORD);
  end;

  PIMAGE_SYMBOL = ^IMAGE_SYMBOL;
  {$EXTERNALSYM PIMAGE_SYMBOL}
  _IMAGE_SYMBOL = record
    N: TImageSymbolN;
    Value: DWORD;
    SectionNumber: SHORT;
    Type_: WORD;
    StorageClass: BYTE;
    NumberOfAuxSymbols: BYTE;
  end;
  {$EXTERNALSYM _IMAGE_SYMBOL}
  IMAGE_SYMBOL = _IMAGE_SYMBOL;
  {$EXTERNALSYM IMAGE_SYMBOL}
  TImageSymbol = IMAGE_SYMBOL;
  PImageSymbol = PIMAGE_SYMBOL;

const
  IMAGE_SIZEOF_SYMBOL = 18;
  {$EXTERNALSYM IMAGE_SIZEOF_SYMBOL}

//
// Section values.
//
// Symbols have a section number of the section in which they are
// defined. Otherwise, section numbers have the following meanings:
//

  IMAGE_SYM_UNDEFINED = SHORT(0);  // Symbol is undefined or is common.
  {$EXTERNALSYM IMAGE_SYM_UNDEFINED}
  IMAGE_SYM_ABSOLUTE  = SHORT(-1); // Symbol is an absolute value.
  {$EXTERNALSYM IMAGE_SYM_ABSOLUTE}
  IMAGE_SYM_DEBUG     = SHORT(-2); // Symbol is a special debug item.
  {$EXTERNALSYM IMAGE_SYM_DEBUG}
  IMAGE_SYM_SECTION_MAX = SHORT($FEFF ); // Values 0xFF00-0xFFFF are special
  {$EXTERNALSYM IMAGE_SYM_SECTION_MAX}
  IMAGE_SYM_SECTION_MAX_EX            = MAXLONG;
  {$EXTERNALSYM IMAGE_SYM_SECTION_MAX_EX}

//
// Type (fundamental) values.
//

  IMAGE_SYM_TYPE_NULL   = $0000; // no type.
  {$EXTERNALSYM IMAGE_SYM_TYPE_NULL}
  IMAGE_SYM_TYPE_VOID   = $0001;
  {$EXTERNALSYM IMAGE_SYM_TYPE_VOID}
  IMAGE_SYM_TYPE_CHAR   = $0002; // type character.
  {$EXTERNALSYM IMAGE_SYM_TYPE_CHAR}
  IMAGE_SYM_TYPE_SHORT  = $0003; // type short integer.
  {$EXTERNALSYM IMAGE_SYM_TYPE_SHORT}
  IMAGE_SYM_TYPE_INT    = $0004;
  {$EXTERNALSYM IMAGE_SYM_TYPE_INT}
  IMAGE_SYM_TYPE_LONG   = $0005;
  {$EXTERNALSYM IMAGE_SYM_TYPE_LONG}
  IMAGE_SYM_TYPE_FLOAT  = $0006;
  {$EXTERNALSYM IMAGE_SYM_TYPE_FLOAT}
  IMAGE_SYM_TYPE_DOUBLE = $0007;
  {$EXTERNALSYM IMAGE_SYM_TYPE_DOUBLE}
  IMAGE_SYM_TYPE_STRUCT = $0008;
  {$EXTERNALSYM IMAGE_SYM_TYPE_STRUCT}
  IMAGE_SYM_TYPE_UNION  = $0009;
  {$EXTERNALSYM IMAGE_SYM_TYPE_UNION}
  IMAGE_SYM_TYPE_ENUM   = $000A; // enumeration.
  {$EXTERNALSYM IMAGE_SYM_TYPE_ENUM}
  IMAGE_SYM_TYPE_MOE    = $000B; // member of enumeration.
  {$EXTERNALSYM IMAGE_SYM_TYPE_MOE}
  IMAGE_SYM_TYPE_BYTE   = $000C;
  {$EXTERNALSYM IMAGE_SYM_TYPE_BYTE}
  IMAGE_SYM_TYPE_WORD   = $000D;
  {$EXTERNALSYM IMAGE_SYM_TYPE_WORD}
  IMAGE_SYM_TYPE_UINT   = $000E;
  {$EXTERNALSYM IMAGE_SYM_TYPE_UINT}
  IMAGE_SYM_TYPE_DWORD  = $000F;
  {$EXTERNALSYM IMAGE_SYM_TYPE_DWORD}
  IMAGE_SYM_TYPE_PCODE  = $8000;
  {$EXTERNALSYM IMAGE_SYM_TYPE_PCODE}

//
// Type (derived) values.
//

  IMAGE_SYM_DTYPE_NULL     = 0; // no derived type.
  {$EXTERNALSYM IMAGE_SYM_DTYPE_NULL}
  IMAGE_SYM_DTYPE_POINTER  = 1; // pointer.
  {$EXTERNALSYM IMAGE_SYM_DTYPE_POINTER}
  IMAGE_SYM_DTYPE_FUNCTION = 2; // function.
  {$EXTERNALSYM IMAGE_SYM_DTYPE_FUNCTION}
  IMAGE_SYM_DTYPE_ARRAY    = 3; // array.
  {$EXTERNALSYM IMAGE_SYM_DTYPE_ARRAY}

//
// Storage classes.
//

  IMAGE_SYM_CLASS_END_OF_FUNCTION  = BYTE(-1);
  {$EXTERNALSYM IMAGE_SYM_CLASS_END_OF_FUNCTION}
  IMAGE_SYM_CLASS_NULL             = $0000;
  {$EXTERNALSYM IMAGE_SYM_CLASS_NULL}
  IMAGE_SYM_CLASS_AUTOMATIC        = $0001;
  {$EXTERNALSYM IMAGE_SYM_CLASS_AUTOMATIC}
  IMAGE_SYM_CLASS_EXTERNAL         = $0002;
  {$EXTERNALSYM IMAGE_SYM_CLASS_EXTERNAL}
  IMAGE_SYM_CLASS_STATIC           = $0003;
  {$EXTERNALSYM IMAGE_SYM_CLASS_STATIC}
  IMAGE_SYM_CLASS_REGISTER         = $0004;
  {$EXTERNALSYM IMAGE_SYM_CLASS_REGISTER}
  IMAGE_SYM_CLASS_EXTERNAL_DEF     = $0005;
  {$EXTERNALSYM IMAGE_SYM_CLASS_EXTERNAL_DEF}
  IMAGE_SYM_CLASS_LABEL            = $0006;
  {$EXTERNALSYM IMAGE_SYM_CLASS_LABEL}
  IMAGE_SYM_CLASS_UNDEFINED_LABEL  = $0007;
  {$EXTERNALSYM IMAGE_SYM_CLASS_UNDEFINED_LABEL}
  IMAGE_SYM_CLASS_MEMBER_OF_STRUCT = $0008;
  {$EXTERNALSYM IMAGE_SYM_CLASS_MEMBER_OF_STRUCT}
  IMAGE_SYM_CLASS_ARGUMENT         = $0009;
  {$EXTERNALSYM IMAGE_SYM_CLASS_ARGUMENT}
  IMAGE_SYM_CLASS_STRUCT_TAG       = $000A;
  {$EXTERNALSYM IMAGE_SYM_CLASS_STRUCT_TAG}
  IMAGE_SYM_CLASS_MEMBER_OF_UNION  = $000B;
  {$EXTERNALSYM IMAGE_SYM_CLASS_MEMBER_OF_UNION}
  IMAGE_SYM_CLASS_UNION_TAG        = $000C;
  {$EXTERNALSYM IMAGE_SYM_CLASS_UNION_TAG}
  IMAGE_SYM_CLASS_TYPE_DEFINITION  = $000D;
  {$EXTERNALSYM IMAGE_SYM_CLASS_TYPE_DEFINITION}
  IMAGE_SYM_CLASS_UNDEFINED_STATIC = $000E;
  {$EXTERNALSYM IMAGE_SYM_CLASS_UNDEFINED_STATIC}
  IMAGE_SYM_CLASS_ENUM_TAG         = $000F;
  {$EXTERNALSYM IMAGE_SYM_CLASS_ENUM_TAG}
  IMAGE_SYM_CLASS_MEMBER_OF_ENUM   = $0010;
  {$EXTERNALSYM IMAGE_SYM_CLASS_MEMBER_OF_ENUM}
  IMAGE_SYM_CLASS_REGISTER_PARAM   = $0011;
  {$EXTERNALSYM IMAGE_SYM_CLASS_REGISTER_PARAM}
  IMAGE_SYM_CLASS_BIT_FIELD        = $0012;
  {$EXTERNALSYM IMAGE_SYM_CLASS_BIT_FIELD}

  IMAGE_SYM_CLASS_FAR_EXTERNAL = $0044;
  {$EXTERNALSYM IMAGE_SYM_CLASS_FAR_EXTERNAL}

  IMAGE_SYM_CLASS_BLOCK         = $0064;
  {$EXTERNALSYM IMAGE_SYM_CLASS_BLOCK}
  IMAGE_SYM_CLASS_FUNCTION      = $0065;
  {$EXTERNALSYM IMAGE_SYM_CLASS_FUNCTION}
  IMAGE_SYM_CLASS_END_OF_STRUCT = $0066;
  {$EXTERNALSYM IMAGE_SYM_CLASS_END_OF_STRUCT}
  IMAGE_SYM_CLASS_FILE          = $0067;
  {$EXTERNALSYM IMAGE_SYM_CLASS_FILE}

// new

  IMAGE_SYM_CLASS_SECTION       = $0068;
  {$EXTERNALSYM IMAGE_SYM_CLASS_SECTION}
  IMAGE_SYM_CLASS_WEAK_EXTERNAL = $0069;
  {$EXTERNALSYM IMAGE_SYM_CLASS_WEAK_EXTERNAL}

  IMAGE_SYM_CLASS_CLR_TOKEN     = $006B;
  {$EXTERNALSYM IMAGE_SYM_CLASS_CLR_TOKEN}

// type packing constants

  N_BTMASK = $000F;
  {$EXTERNALSYM N_BTMASK}
  N_TMASK  = $0030;
  {$EXTERNALSYM N_TMASK}
  N_TMASK1 = $00C0;
  {$EXTERNALSYM N_TMASK1}
  N_TMASK2 = $00F0;
  {$EXTERNALSYM N_TMASK2}
  N_BTSHFT = 4;
  {$EXTERNALSYM N_BTSHFT}
  N_TSHIFT = 2;
  {$EXTERNALSYM N_TSHIFT}

// MACROS

// Basic Type of  x

function BTYPE(x: DWORD): DWORD;
{$EXTERNALSYM BTYPE}

// Is x a pointer?

function ISPTR(x: DWORD): Boolean;
{$EXTERNALSYM ISPTR}

// Is x a function?

function ISFCN(x: DWORD): Boolean;
{$EXTERNALSYM ISFCN}

// Is x an array?

function ISARY(x: DWORD): Boolean;
{$EXTERNALSYM ISARY}

// Is x a structure, union, or enumeration TAG?

function ISTAG(x: DWORD): Boolean;
{$EXTERNALSYM ISTAG}

//
// Auxiliary entry format.
//

type
  TImgAuzSymSymMisc = record
    case Integer of
      0: (
        Linenumber: WORD;             // declaration line number
        Size: WORD);                  // size of struct, union, or enum
      1: (
        TotalSize: DWORD);
  end;

  TImgAuzSymSymFcnAry = record
    case Integer of
      0: ( // if ISFCN, tag, or .bb
        PointerToLinenumber: DWORD;
        PointerToNextFunction: DWORD);
      1: ( // if ISARY, up to 4 dimen.
        Dimension: array [0..3] of WORD);
  end;

  TImgAuxSymSym = record
    TagIndex: DWORD;                      // struct, union, or enum tag index
    Misc: TImgAuzSymSymMisc;
    FcnAry: TImgAuzSymSymFcnAry;
    TvIndex: WORD;                        // tv index
  end;

  TImgAuxSymFile = record
    Name: array [0..IMAGE_SIZEOF_SYMBOL - 1] of BYTE;
  end;

  TImgAuxSymSection = record
    Length: DWORD;                         // section length
    NumberOfRelocations: WORD;             // number of relocation entries
    NumberOfLinenumbers: WORD;             // number of line numbers
    CheckSum: DWORD;                       // checksum for communal
    Number: SHORT;                         // section number to associate with
    Selection: BYTE;                       // communal selection type
  end;

  PIMAGE_AUX_SYMBOL = ^IMAGE_AUX_SYMBOL;
  {$EXTERNALSYM PIMAGE_AUX_SYMBOL}
  _IMAGE_AUX_SYMBOL = record
    case Integer of
      0: (Sym: TImgAuxSymSym);
      1: (File_: TImgAuxSymFile);
      2: (Section: TImgAuxSymSection);
  end;
  {$EXTERNALSYM _IMAGE_AUX_SYMBOL}
  IMAGE_AUX_SYMBOL = _IMAGE_AUX_SYMBOL;
  {$EXTERNALSYM IMAGE_AUX_SYMBOL}
  TImageAuxSymbol = IMAGE_AUX_SYMBOL;
  PImageAuxSymbol = PIMAGE_AUX_SYMBOL;

const
  IMAGE_SIZEOF_AUX_SYMBOL = 18;
  {$EXTERNALSYM IMAGE_SIZEOF_AUX_SYMBOL}

  IMAGE_AUX_SYMBOL_TYPE_TOKEN_DEF = 1;
  {$EXTERNALSYM IMAGE_AUX_SYMBOL_TYPE_TOKEN_DEF}

type
  IMAGE_AUX_SYMBOL_TYPE = DWORD;
  {$EXTERNALSYM IMAGE_AUX_SYMBOL_TYPE}
  TImageAuxSymbolType = IMAGE_AUX_SYMBOL_TYPE;

  IMAGE_AUX_SYMBOL_TOKEN_DEF = packed record
    bAuxType: BYTE;                  // IMAGE_AUX_SYMBOL_TYPE
    bReserved: BYTE;                 // Must be 0
    SymbolTableIndex: DWORD;
    rgbReserved: array [0..11] of BYTE;           // Must be 0
  end;
  {$EXTERNALSYM IMAGE_AUX_SYMBOL_TOKEN_DEF}
  PIMAGE_AUX_SYMBOL_TOKEN_DEF = ^IMAGE_AUX_SYMBOL_TOKEN_DEF;
  {$EXTERNALSYM PIMAGE_AUX_SYMBOL_TOKEN_DEF}
  TImageAuxSymbolTokenDef = IMAGE_AUX_SYMBOL_TOKEN_DEF;
  PImageAuxSymbolTokenDef = PIMAGE_AUX_SYMBOL_TOKEN_DEF;

//
// Communal selection types.
//

const
  IMAGE_COMDAT_SELECT_NODUPLICATES = 1;
  {$EXTERNALSYM IMAGE_COMDAT_SELECT_NODUPLICATES}
  IMAGE_COMDAT_SELECT_ANY          = 2;
  {$EXTERNALSYM IMAGE_COMDAT_SELECT_ANY}
  IMAGE_COMDAT_SELECT_SAME_SIZE    = 3;
  {$EXTERNALSYM IMAGE_COMDAT_SELECT_SAME_SIZE}
  IMAGE_COMDAT_SELECT_EXACT_MATCH  = 4;
  {$EXTERNALSYM IMAGE_COMDAT_SELECT_EXACT_MATCH}
  IMAGE_COMDAT_SELECT_ASSOCIATIVE  = 5;
  {$EXTERNALSYM IMAGE_COMDAT_SELECT_ASSOCIATIVE}
  IMAGE_COMDAT_SELECT_LARGEST      = 6;
  {$EXTERNALSYM IMAGE_COMDAT_SELECT_LARGEST}
  IMAGE_COMDAT_SELECT_NEWEST       = 7;
  {$EXTERNALSYM IMAGE_COMDAT_SELECT_NEWEST}

  IMAGE_WEAK_EXTERN_SEARCH_NOLIBRARY = 1;
  {$EXTERNALSYM IMAGE_WEAK_EXTERN_SEARCH_NOLIBRARY}
  IMAGE_WEAK_EXTERN_SEARCH_LIBRARY   = 2;
  {$EXTERNALSYM IMAGE_WEAK_EXTERN_SEARCH_LIBRARY}
  IMAGE_WEAK_EXTERN_SEARCH_ALIAS     = 3;
  {$EXTERNALSYM IMAGE_WEAK_EXTERN_SEARCH_ALIAS}

//
// Relocation format.
//

type
  TImgRelocUnion = record
    case Integer of
      0: (VirtualAddress: DWORD);
      1: (RelocCount: DWORD);  // Set to the real count when IMAGE_SCN_LNK_NRELOC_OVFL is set
  end;

  PIMAGE_RELOCATION = ^IMAGE_RELOCATION;
  {$EXTERNALSYM PIMAGE_RELOCATION}
  _IMAGE_RELOCATION = record
    Union: TImgRelocUnion;
    SymbolTableIndex: DWORD;
    Type_: WORD;
  end;
  {$EXTERNALSYM _IMAGE_RELOCATION}
  IMAGE_RELOCATION = _IMAGE_RELOCATION;
  {$EXTERNALSYM IMAGE_RELOCATION}
  TImageRelocation = IMAGE_RELOCATION;
  PImageRelocation = PIMAGE_RELOCATION;

const
  IMAGE_SIZEOF_RELOCATION = 10;
  {$EXTERNALSYM IMAGE_SIZEOF_RELOCATION}

//
// I386 relocation types.
//

  IMAGE_REL_I386_ABSOLUTE = $0000; // Reference is absolute, no relocation is necessary
  {$EXTERNALSYM IMAGE_REL_I386_ABSOLUTE}
  IMAGE_REL_I386_DIR16    = $0001; // Direct 16-bit reference to the symbols virtual address
  {$EXTERNALSYM IMAGE_REL_I386_DIR16}
  IMAGE_REL_I386_REL16    = $0002; // PC-relative 16-bit reference to the symbols virtual address
  {$EXTERNALSYM IMAGE_REL_I386_REL16}
  IMAGE_REL_I386_DIR32    = $0006; // Direct 32-bit reference to the symbols virtual address
  {$EXTERNALSYM IMAGE_REL_I386_DIR32}
  IMAGE_REL_I386_DIR32NB  = $0007; // Direct 32-bit reference to the symbols virtual address, base not included
  {$EXTERNALSYM IMAGE_REL_I386_DIR32NB}
  IMAGE_REL_I386_SEG12    = $0009; // Direct 16-bit reference to the segment-selector bits of a 32-bit virtual address
  {$EXTERNALSYM IMAGE_REL_I386_SEG12}
  IMAGE_REL_I386_SECTION  = $000A;
  {$EXTERNALSYM IMAGE_REL_I386_SECTION}
  IMAGE_REL_I386_SECREL   = $000B;
  {$EXTERNALSYM IMAGE_REL_I386_SECREL}
  IMAGE_REL_MIPS_SECRELLO = $000C; // Low 16-bit section relative referemce (used for >32k TLS)
  {$EXTERNALSYM IMAGE_REL_MIPS_SECRELLO}
  IMAGE_REL_MIPS_SECRELHI = $000D; // High 16-bit section relative reference (used for >32k TLS)
  {$EXTERNALSYM IMAGE_REL_MIPS_SECRELHI}
  IMAGE_REL_I386_REL32    = $0014; // PC-relative 32-bit reference to the symbols virtual address
  {$EXTERNALSYM IMAGE_REL_I386_REL32}

//
// MIPS relocation types.
//

  IMAGE_REL_MIPS_ABSOLUTE  = $0000; // Reference is absolute, no relocation is necessary
  {$EXTERNALSYM IMAGE_REL_MIPS_ABSOLUTE}
  IMAGE_REL_MIPS_REFHALF   = $0001;
  {$EXTERNALSYM IMAGE_REL_MIPS_REFHALF}
  IMAGE_REL_MIPS_REFWORD   = $0002;
  {$EXTERNALSYM IMAGE_REL_MIPS_REFWORD}
  IMAGE_REL_MIPS_JMPADDR   = $0003;
  {$EXTERNALSYM IMAGE_REL_MIPS_JMPADDR}
  IMAGE_REL_MIPS_REFHI     = $0004;
  {$EXTERNALSYM IMAGE_REL_MIPS_REFHI}
  IMAGE_REL_MIPS_REFLO     = $0005;
  {$EXTERNALSYM IMAGE_REL_MIPS_REFLO}
  IMAGE_REL_MIPS_GPREL     = $0006;
  {$EXTERNALSYM IMAGE_REL_MIPS_GPREL}
  IMAGE_REL_MIPS_LITERAL   = $0007;
  {$EXTERNALSYM IMAGE_REL_MIPS_LITERAL}
  IMAGE_REL_MIPS_SECTION   = $000A;
  {$EXTERNALSYM IMAGE_REL_MIPS_SECTION}
  IMAGE_REL_MIPS_SECREL    = $000B;
  {$EXTERNALSYM IMAGE_REL_MIPS_SECREL}
  //IMAGE_REL_MIPS_SECRELLO  = $000C; // Low 16-bit section relative referemce (used for >32k TLS)
  //{$EXTERNALSYM IMAGE_REL_MIPS_SECRELLO}
  //IMAGE_REL_MIPS_SECRELHI  = $000D; // High 16-bit section relative reference (used for >32k TLS)
  //{$EXTERNALSYM IMAGE_REL_MIPS_SECRELHI}
  IMAGE_REL_MIPS_TOKEN     = $000E; // clr token
  {$EXTERNALSYM IMAGE_REL_MIPS_TOKEN}
  IMAGE_REL_MIPS_JMPADDR16 = $0010;
  {$EXTERNALSYM IMAGE_REL_MIPS_JMPADDR16}
  IMAGE_REL_MIPS_REFWORDNB = $0022;
  {$EXTERNALSYM IMAGE_REL_MIPS_REFWORDNB}
  IMAGE_REL_MIPS_PAIR      = $0025;
  {$EXTERNALSYM IMAGE_REL_MIPS_PAIR}

//
// Alpha Relocation types.
//

  IMAGE_REL_ALPHA_ABSOLUTE       = $0000;
  {$EXTERNALSYM IMAGE_REL_ALPHA_ABSOLUTE}
  IMAGE_REL_ALPHA_REFLONG        = $0001;
  {$EXTERNALSYM IMAGE_REL_ALPHA_REFLONG}
  IMAGE_REL_ALPHA_REFQUAD        = $0002;
  {$EXTERNALSYM IMAGE_REL_ALPHA_REFQUAD}
  IMAGE_REL_ALPHA_GPREL32        = $0003;
  {$EXTERNALSYM IMAGE_REL_ALPHA_GPREL32}
  IMAGE_REL_ALPHA_LITERAL        = $0004;
  {$EXTERNALSYM IMAGE_REL_ALPHA_LITERAL}
  IMAGE_REL_ALPHA_LITUSE         = $0005;
  {$EXTERNALSYM IMAGE_REL_ALPHA_LITUSE}
  IMAGE_REL_ALPHA_GPDISP         = $0006;
  {$EXTERNALSYM IMAGE_REL_ALPHA_GPDISP}
  IMAGE_REL_ALPHA_BRADDR         = $0007;
  {$EXTERNALSYM IMAGE_REL_ALPHA_BRADDR}
  IMAGE_REL_ALPHA_HINT           = $0008;
  {$EXTERNALSYM IMAGE_REL_ALPHA_HINT}
  IMAGE_REL_ALPHA_INLINE_REFLONG = $0009;
  {$EXTERNALSYM IMAGE_REL_ALPHA_INLINE_REFLONG}
  IMAGE_REL_ALPHA_REFHI          = $000A;
  {$EXTERNALSYM IMAGE_REL_ALPHA_REFHI}
  IMAGE_REL_ALPHA_REFLO          = $000B;
  {$EXTERNALSYM IMAGE_REL_ALPHA_REFLO}
  IMAGE_REL_ALPHA_PAIR           = $000C;
  {$EXTERNALSYM IMAGE_REL_ALPHA_PAIR}
  IMAGE_REL_ALPHA_MATCH          = $000D;
  {$EXTERNALSYM IMAGE_REL_ALPHA_MATCH}
  IMAGE_REL_ALPHA_SECTION        = $000E;
  {$EXTERNALSYM IMAGE_REL_ALPHA_SECTION}
  IMAGE_REL_ALPHA_SECREL         = $000F;
  {$EXTERNALSYM IMAGE_REL_ALPHA_SECREL}
  IMAGE_REL_ALPHA_REFLONGNB      = $0010;
  {$EXTERNALSYM IMAGE_REL_ALPHA_REFLONGNB}
  IMAGE_REL_ALPHA_SECRELLO       = $0011; // Low 16-bit section relative reference
  {$EXTERNALSYM IMAGE_REL_ALPHA_SECRELLO}
  IMAGE_REL_ALPHA_SECRELHI       = $0012; // High 16-bit section relative reference
  {$EXTERNALSYM IMAGE_REL_ALPHA_SECRELHI}
  IMAGE_REL_ALPHA_REFQ3          = $0013; // High 16 bits of 48 bit reference
  {$EXTERNALSYM IMAGE_REL_ALPHA_REFQ3}
  IMAGE_REL_ALPHA_REFQ2          = $0014; // Middle 16 bits of 48 bit reference
  {$EXTERNALSYM IMAGE_REL_ALPHA_REFQ2}
  IMAGE_REL_ALPHA_REFQ1          = $0015; // Low 16 bits of 48 bit reference
  {$EXTERNALSYM IMAGE_REL_ALPHA_REFQ1}
  IMAGE_REL_ALPHA_GPRELLO        = $0016; // Low 16-bit GP relative reference
  {$EXTERNALSYM IMAGE_REL_ALPHA_GPRELLO}
  IMAGE_REL_ALPHA_GPRELHI        = $0017; // High 16-bit GP relative reference
  {$EXTERNALSYM IMAGE_REL_ALPHA_GPRELHI}

//
// IBM PowerPC relocation types.
//

  IMAGE_REL_PPC_ABSOLUTE = $0000; // NOP
  {$EXTERNALSYM IMAGE_REL_PPC_ABSOLUTE}
  IMAGE_REL_PPC_ADDR64   = $0001; // 64-bit address
  {$EXTERNALSYM IMAGE_REL_PPC_ADDR64}
  IMAGE_REL_PPC_ADDR32   = $0002; // 32-bit address
  {$EXTERNALSYM IMAGE_REL_PPC_ADDR32}
  IMAGE_REL_PPC_ADDR24   = $0003; // 26-bit address, shifted left 2 (branch absolute)
  {$EXTERNALSYM IMAGE_REL_PPC_ADDR24}
  IMAGE_REL_PPC_ADDR16   = $0004; // 16-bit address
  {$EXTERNALSYM IMAGE_REL_PPC_ADDR16}
  IMAGE_REL_PPC_ADDR14   = $0005; // 16-bit address, shifted left 2 (load doubleword)
  {$EXTERNALSYM IMAGE_REL_PPC_ADDR14}
  IMAGE_REL_PPC_REL24    = $0006; // 26-bit PC-relative offset, shifted left 2 (branch relative)
  {$EXTERNALSYM IMAGE_REL_PPC_REL24}
  IMAGE_REL_PPC_REL14    = $0007; // 16-bit PC-relative offset, shifted left 2 (br cond relative)
  {$EXTERNALSYM IMAGE_REL_PPC_REL14}
  IMAGE_REL_PPC_TOCREL16 = $0008; // 16-bit offset from TOC base
  {$EXTERNALSYM IMAGE_REL_PPC_TOCREL16}
  IMAGE_REL_PPC_TOCREL14 = $0009; // 16-bit offset from TOC base, shifted left 2 (load doubleword)
  {$EXTERNALSYM IMAGE_REL_PPC_TOCREL14}

  IMAGE_REL_PPC_ADDR32NB = $000A; // 32-bit addr w/o image base
  {$EXTERNALSYM IMAGE_REL_PPC_ADDR32NB}
  IMAGE_REL_PPC_SECREL   = $000B; // va of containing section (as in an image sectionhdr)
  {$EXTERNALSYM IMAGE_REL_PPC_SECREL}
  IMAGE_REL_PPC_SECTION  = $000C; // sectionheader number
  {$EXTERNALSYM IMAGE_REL_PPC_SECTION}
  IMAGE_REL_PPC_IFGLUE   = $000D; // substitute TOC restore instruction iff symbol is glue code
  {$EXTERNALSYM IMAGE_REL_PPC_IFGLUE}
  IMAGE_REL_PPC_IMGLUE   = $000E; // symbol is glue code; virtual address is TOC restore instruction
  {$EXTERNALSYM IMAGE_REL_PPC_IMGLUE}
  IMAGE_REL_PPC_SECREL16 = $000F; // va of containing section (limited to 16 bits)
  {$EXTERNALSYM IMAGE_REL_PPC_SECREL16}
  IMAGE_REL_PPC_REFHI    = $0010;
  {$EXTERNALSYM IMAGE_REL_PPC_REFHI}
  IMAGE_REL_PPC_REFLO    = $0011;
  {$EXTERNALSYM IMAGE_REL_PPC_REFLO}
  IMAGE_REL_PPC_PAIR     = $0012;
  {$EXTERNALSYM IMAGE_REL_PPC_PAIR}
  IMAGE_REL_PPC_SECRELLO = $0013; // Low 16-bit section relative reference (used for >32k TLS)
  {$EXTERNALSYM IMAGE_REL_PPC_SECRELLO}
  IMAGE_REL_PPC_SECRELHI = $0014; // High 16-bit section relative reference (used for >32k TLS)
  {$EXTERNALSYM IMAGE_REL_PPC_SECRELHI}
  IMAGE_REL_PPC_GPREL    = $0015;
  {$EXTERNALSYM IMAGE_REL_PPC_GPREL}
  IMAGE_REL_PPC_TOKEN    = $0016; // clr token
  {$EXTERNALSYM IMAGE_REL_PPC_TOKEN}

  IMAGE_REL_PPC_TYPEMASK = $00FF; // mask to isolate above values in IMAGE_RELOCATION.Type
  {$EXTERNALSYM IMAGE_REL_PPC_TYPEMASK}

// Flag bits in IMAGE_RELOCATION.TYPE

  IMAGE_REL_PPC_NEG      = $0100; // subtract reloc value rather than adding it
  {$EXTERNALSYM IMAGE_REL_PPC_NEG}
  IMAGE_REL_PPC_BRTAKEN  = $0200; // fix branch prediction bit to predict branch taken
  {$EXTERNALSYM IMAGE_REL_PPC_BRTAKEN}
  IMAGE_REL_PPC_BRNTAKEN = $0400; // fix branch prediction bit to predict branch not taken
  {$EXTERNALSYM IMAGE_REL_PPC_BRNTAKEN}
  IMAGE_REL_PPC_TOCDEFN  = $0800; // toc slot defined in file (or, data in toc)
  {$EXTERNALSYM IMAGE_REL_PPC_TOCDEFN}

//
// Hitachi SH3 relocation types.
//

  IMAGE_REL_SH3_ABSOLUTE        = $0000; // No relocation
  {$EXTERNALSYM IMAGE_REL_SH3_ABSOLUTE}
  IMAGE_REL_SH3_DIRECT16        = $0001; // 16 bit direct
  {$EXTERNALSYM IMAGE_REL_SH3_DIRECT16}
  IMAGE_REL_SH3_DIRECT32        = $0002; // 32 bit direct
  {$EXTERNALSYM IMAGE_REL_SH3_DIRECT32}
  IMAGE_REL_SH3_DIRECT8         = $0003; // 8 bit direct, -128..255
  {$EXTERNALSYM IMAGE_REL_SH3_DIRECT8}
  IMAGE_REL_SH3_DIRECT8_WORD    = $0004; // 8 bit direct .W (0 ext.)
  {$EXTERNALSYM IMAGE_REL_SH3_DIRECT8_WORD}
  IMAGE_REL_SH3_DIRECT8_LONG    = $0005; // 8 bit direct .L (0 ext.)
  {$EXTERNALSYM IMAGE_REL_SH3_DIRECT8_LONG}
  IMAGE_REL_SH3_DIRECT4         = $0006; // 4 bit direct (0 ext.)
  {$EXTERNALSYM IMAGE_REL_SH3_DIRECT4}
  IMAGE_REL_SH3_DIRECT4_WORD    = $0007; // 4 bit direct .W (0 ext.)
  {$EXTERNALSYM IMAGE_REL_SH3_DIRECT4_WORD}
  IMAGE_REL_SH3_DIRECT4_LONG    = $0008; // 4 bit direct .L (0 ext.)
  {$EXTERNALSYM IMAGE_REL_SH3_DIRECT4_LONG}
  IMAGE_REL_SH3_PCREL8_WORD     = $0009; // 8 bit PC relative .W
  {$EXTERNALSYM IMAGE_REL_SH3_PCREL8_WORD}
  IMAGE_REL_SH3_PCREL8_LONG     = $000A; // 8 bit PC relative .L
  {$EXTERNALSYM IMAGE_REL_SH3_PCREL8_LONG}
  IMAGE_REL_SH3_PCREL12_WORD    = $000B; // 12 LSB PC relative .W
  {$EXTERNALSYM IMAGE_REL_SH3_PCREL12_WORD}
  IMAGE_REL_SH3_STARTOF_SECTION = $000C; // Start of EXE section
  {$EXTERNALSYM IMAGE_REL_SH3_STARTOF_SECTION}
  IMAGE_REL_SH3_SIZEOF_SECTION  = $000D; // Size of EXE section
  {$EXTERNALSYM IMAGE_REL_SH3_SIZEOF_SECTION}
  IMAGE_REL_SH3_SECTION         = $000E; // Section table index
  {$EXTERNALSYM IMAGE_REL_SH3_SECTION}
  IMAGE_REL_SH3_SECREL          = $000F; // Offset within section
  {$EXTERNALSYM IMAGE_REL_SH3_SECREL}
  IMAGE_REL_SH3_DIRECT32_NB     = $0010; // 32 bit direct not based
  {$EXTERNALSYM IMAGE_REL_SH3_DIRECT32_NB}
  IMAGE_REL_SH3_GPREL4_LONG     = $0011; // GP-relative addressing
  {$EXTERNALSYM IMAGE_REL_SH3_GPREL4_LONG}
  IMAGE_REL_SH3_TOKEN           = $0012; // clr token
  {$EXTERNALSYM IMAGE_REL_SH3_TOKEN}
  IMAGE_REL_SHM_PCRELPT               = $0013;  // Offset from current
                                                //  instruction in longwords
                                                //  if not NOMODE, insert the
                                                //  inverse of the low bit at
                                                //  bit 32 to select PTA/PTB
  {$EXTERNALSYM IMAGE_REL_SHM_PCRELPT}
  IMAGE_REL_SHM_REFLO                 = $0014;  // Low bits of 32-bit address
  {$EXTERNALSYM IMAGE_REL_SHM_REFLO}
  IMAGE_REL_SHM_REFHALF               = $0015;  // High bits of 32-bit address
  {$EXTERNALSYM IMAGE_REL_SHM_REFHALF}
  IMAGE_REL_SHM_RELLO                 = $0016;  // Low bits of relative reference
  {$EXTERNALSYM IMAGE_REL_SHM_RELLO}
  IMAGE_REL_SHM_RELHALF               = $0017;  // High bits of relative reference
  {$EXTERNALSYM IMAGE_REL_SHM_RELHALF}
  IMAGE_REL_SHM_PAIR                  = $0018;  // offset operand for relocation
  {$EXTERNALSYM IMAGE_REL_SHM_PAIR}

  IMAGE_REL_SH_NOMODE                 = $8000;  // relocation ignores section mode
  {$EXTERNALSYM IMAGE_REL_SH_NOMODE}

  IMAGE_REL_ARM_ABSOLUTE = $0000; // No relocation required
  {$EXTERNALSYM IMAGE_REL_ARM_ABSOLUTE}
  IMAGE_REL_ARM_ADDR32   = $0001; // 32 bit address
  {$EXTERNALSYM IMAGE_REL_ARM_ADDR32}
  IMAGE_REL_ARM_ADDR32NB = $0002; // 32 bit address w/o image base
  {$EXTERNALSYM IMAGE_REL_ARM_ADDR32NB}
  IMAGE_REL_ARM_BRANCH24 = $0003; // 24 bit offset << 2 & sign ext.
  {$EXTERNALSYM IMAGE_REL_ARM_BRANCH24}
  IMAGE_REL_ARM_BRANCH11 = $0004; // Thumb: 2 11 bit offsets
  {$EXTERNALSYM IMAGE_REL_ARM_BRANCH11}
  IMAGE_REL_ARM_TOKEN    = $0005; // clr token
  {$EXTERNALSYM IMAGE_REL_ARM_TOKEN}
  IMAGE_REL_ARM_GPREL12  = $0006; // GP-relative addressing (ARM)
  {$EXTERNALSYM IMAGE_REL_ARM_GPREL12}
  IMAGE_REL_ARM_GPREL7   = $0007; // GP-relative addressing (Thumb)
  {$EXTERNALSYM IMAGE_REL_ARM_GPREL7}
  IMAGE_REL_ARM_BLX24    = $0008;
  {$EXTERNALSYM IMAGE_REL_ARM_BLX24}
  IMAGE_REL_ARM_BLX11    = $0009;
  {$EXTERNALSYM IMAGE_REL_ARM_BLX11}
  IMAGE_REL_ARM_SECTION  = $000E; // Section table index
  {$EXTERNALSYM IMAGE_REL_ARM_SECTION}
  IMAGE_REL_ARM_SECREL   = $000F; // Offset within section
  {$EXTERNALSYM IMAGE_REL_ARM_SECREL}

  IMAGE_REL_AM_ABSOLUTE = $0000;
  {$EXTERNALSYM IMAGE_REL_AM_ABSOLUTE}
  IMAGE_REL_AM_ADDR32   = $0001;
  {$EXTERNALSYM IMAGE_REL_AM_ADDR32}
  IMAGE_REL_AM_ADDR32NB = $0002;
  {$EXTERNALSYM IMAGE_REL_AM_ADDR32NB}
  IMAGE_REL_AM_CALL32   = $0003;
  {$EXTERNALSYM IMAGE_REL_AM_CALL32}
  IMAGE_REL_AM_FUNCINFO = $0004;
  {$EXTERNALSYM IMAGE_REL_AM_FUNCINFO}
  IMAGE_REL_AM_REL32_1  = $0005;
  {$EXTERNALSYM IMAGE_REL_AM_REL32_1}
  IMAGE_REL_AM_REL32_2  = $0006;
  {$EXTERNALSYM IMAGE_REL_AM_REL32_2}
  IMAGE_REL_AM_SECREL   = $0007;
  {$EXTERNALSYM IMAGE_REL_AM_SECREL}
  IMAGE_REL_AM_SECTION  = $0008;
  {$EXTERNALSYM IMAGE_REL_AM_SECTION}
  IMAGE_REL_AM_TOKEN    = $0009;
  {$EXTERNALSYM IMAGE_REL_AM_TOKEN}

//
// X86-64 relocations
//

  IMAGE_REL_AMD64_ABSOLUTE = $0000; // Reference is absolute, no relocation is necessary
  {$EXTERNALSYM IMAGE_REL_AMD64_ABSOLUTE}
  IMAGE_REL_AMD64_ADDR64   = $0001; // 64-bit address (VA).
  {$EXTERNALSYM IMAGE_REL_AMD64_ADDR64}
  IMAGE_REL_AMD64_ADDR32   = $0002; // 32-bit address (VA).
  {$EXTERNALSYM IMAGE_REL_AMD64_ADDR32}
  IMAGE_REL_AMD64_ADDR32NB = $0003; // 32-bit address w/o image base (RVA).
  {$EXTERNALSYM IMAGE_REL_AMD64_ADDR32NB}
  IMAGE_REL_AMD64_REL32    = $0004; // 32-bit relative address from byte following reloc
  {$EXTERNALSYM IMAGE_REL_AMD64_REL32}
  IMAGE_REL_AMD64_REL32_1  = $0005; // 32-bit relative address from byte distance 1 from reloc
  {$EXTERNALSYM IMAGE_REL_AMD64_REL32_1}
  IMAGE_REL_AMD64_REL32_2  = $0006; // 32-bit relative address from byte distance 2 from reloc
  {$EXTERNALSYM IMAGE_REL_AMD64_REL32_2}
  IMAGE_REL_AMD64_REL32_3  = $0007; // 32-bit relative address from byte distance 3 from reloc
  {$EXTERNALSYM IMAGE_REL_AMD64_REL32_3}
  IMAGE_REL_AMD64_REL32_4  = $0008; // 32-bit relative address from byte distance 4 from reloc
  {$EXTERNALSYM IMAGE_REL_AMD64_REL32_4}
  IMAGE_REL_AMD64_REL32_5  = $0009; // 32-bit relative address from byte distance 5 from reloc
  {$EXTERNALSYM IMAGE_REL_AMD64_REL32_5}
  IMAGE_REL_AMD64_SECTION  = $000A; // Section index
  {$EXTERNALSYM IMAGE_REL_AMD64_SECTION}
  IMAGE_REL_AMD64_SECREL   = $000B; // 32 bit offset from base of section containing target
  {$EXTERNALSYM IMAGE_REL_AMD64_SECREL}
  IMAGE_REL_AMD64_SECREL7  = $000C; // 7 bit unsigned offset from base of section containing target
  {$EXTERNALSYM IMAGE_REL_AMD64_SECREL7}
  IMAGE_REL_AMD64_TOKEN    = $000D; // 32 bit metadata token
  {$EXTERNALSYM IMAGE_REL_AMD64_TOKEN}
  IMAGE_REL_AMD64_SREL32   = $000E;  // 32 bit signed span-dependent value emitted into object
  {$EXTERNALSYM IMAGE_REL_AMD64_SREL32}
  IMAGE_REL_AMD64_PAIR     = $000F;
  {$EXTERNALSYM IMAGE_REL_AMD64_PAIR}
  IMAGE_REL_AMD64_SSPAN32  = $0010;  // 32 bit signed span-dependent value applied at link time
  {$EXTERNALSYM IMAGE_REL_AMD64_SSPAN32}

//
// IA64 relocation types.
//

  IMAGE_REL_IA64_ABSOLUTE  = $0000;
  {$EXTERNALSYM IMAGE_REL_IA64_ABSOLUTE}
  IMAGE_REL_IA64_IMM14     = $0001;
  {$EXTERNALSYM IMAGE_REL_IA64_IMM14}
  IMAGE_REL_IA64_IMM22     = $0002;
  {$EXTERNALSYM IMAGE_REL_IA64_IMM22}
  IMAGE_REL_IA64_IMM64     = $0003;
  {$EXTERNALSYM IMAGE_REL_IA64_IMM64}
  IMAGE_REL_IA64_DIR32     = $0004;
  {$EXTERNALSYM IMAGE_REL_IA64_DIR32}
  IMAGE_REL_IA64_DIR64     = $0005;
  {$EXTERNALSYM IMAGE_REL_IA64_DIR64}
  IMAGE_REL_IA64_PCREL21B  = $0006;
  {$EXTERNALSYM IMAGE_REL_IA64_PCREL21B}
  IMAGE_REL_IA64_PCREL21M  = $0007;
  {$EXTERNALSYM IMAGE_REL_IA64_PCREL21M}
  IMAGE_REL_IA64_PCREL21F  = $0008;
  {$EXTERNALSYM IMAGE_REL_IA64_PCREL21F}
  IMAGE_REL_IA64_GPREL22   = $0009;
  {$EXTERNALSYM IMAGE_REL_IA64_GPREL22}
  IMAGE_REL_IA64_LTOFF22   = $000A;
  {$EXTERNALSYM IMAGE_REL_IA64_LTOFF22}
  IMAGE_REL_IA64_SECTION   = $000B;
  {$EXTERNALSYM IMAGE_REL_IA64_SECTION}
  IMAGE_REL_IA64_SECREL22  = $000C;
  {$EXTERNALSYM IMAGE_REL_IA64_SECREL22}
  IMAGE_REL_IA64_SECREL64I = $000D;
  {$EXTERNALSYM IMAGE_REL_IA64_SECREL64I}
  IMAGE_REL_IA64_SECREL32  = $000E;
  {$EXTERNALSYM IMAGE_REL_IA64_SECREL32}

//

  IMAGE_REL_IA64_DIR32NB    = $0010;
  {$EXTERNALSYM IMAGE_REL_IA64_DIR32NB}
  IMAGE_REL_IA64_SREL14     = $0011;
  {$EXTERNALSYM IMAGE_REL_IA64_SREL14}
  IMAGE_REL_IA64_SREL22     = $0012;
  {$EXTERNALSYM IMAGE_REL_IA64_SREL22}
  IMAGE_REL_IA64_SREL32     = $0013;
  {$EXTERNALSYM IMAGE_REL_IA64_SREL32}
  IMAGE_REL_IA64_UREL32     = $0014;
  {$EXTERNALSYM IMAGE_REL_IA64_UREL32}
  IMAGE_REL_IA64_PCREL60X   = $0015; // This is always a BRL and never converted
  {$EXTERNALSYM IMAGE_REL_IA64_PCREL60X}
  IMAGE_REL_IA64_PCREL60B   = $0016; // If possible, convert to MBB bundle with NOP.B in slot 1
  {$EXTERNALSYM IMAGE_REL_IA64_PCREL60B}
  IMAGE_REL_IA64_PCREL60F   = $0017; // If possible, convert to MFB bundle with NOP.F in slot 1
  {$EXTERNALSYM IMAGE_REL_IA64_PCREL60F}
  IMAGE_REL_IA64_PCREL60I   = $0018; // If possible, convert to MIB bundle with NOP.I in slot 1
  {$EXTERNALSYM IMAGE_REL_IA64_PCREL60I}
  IMAGE_REL_IA64_PCREL60M   = $0019; // If possible, convert to MMB bundle with NOP.M in slot 1
  {$EXTERNALSYM IMAGE_REL_IA64_PCREL60M}
  IMAGE_REL_IA64_IMMGPREL64 = $001A;
  {$EXTERNALSYM IMAGE_REL_IA64_IMMGPREL64}
  IMAGE_REL_IA64_TOKEN      = $001B; // clr token
  {$EXTERNALSYM IMAGE_REL_IA64_TOKEN}
  IMAGE_REL_IA64_GPREL32    = $001C;
  {$EXTERNALSYM IMAGE_REL_IA64_GPREL32}
  IMAGE_REL_IA64_ADDEND     = $001F;
  {$EXTERNALSYM IMAGE_REL_IA64_ADDEND}

//
// CEF relocation types.
//

  IMAGE_REL_CEF_ABSOLUTE = $0000; // Reference is absolute, no relocation is necessary
  {$EXTERNALSYM IMAGE_REL_CEF_ABSOLUTE}
  IMAGE_REL_CEF_ADDR32   = $0001; // 32-bit address (VA).
  {$EXTERNALSYM IMAGE_REL_CEF_ADDR32}
  IMAGE_REL_CEF_ADDR64   = $0002; // 64-bit address (VA).
  {$EXTERNALSYM IMAGE_REL_CEF_ADDR64}
  IMAGE_REL_CEF_ADDR32NB = $0003; // 32-bit address w/o image base (RVA).
  {$EXTERNALSYM IMAGE_REL_CEF_ADDR32NB}
  IMAGE_REL_CEF_SECTION  = $0004; // Section index
  {$EXTERNALSYM IMAGE_REL_CEF_SECTION}
  IMAGE_REL_CEF_SECREL   = $0005; // 32 bit offset from base of section containing target
  {$EXTERNALSYM IMAGE_REL_CEF_SECREL}
  IMAGE_REL_CEF_TOKEN    = $0006; // 32 bit metadata token
  {$EXTERNALSYM IMAGE_REL_CEF_TOKEN}

//
// clr relocation types.
//

  IMAGE_REL_CEE_ABSOLUTE = $0000; // Reference is absolute, no relocation is necessary
  {$EXTERNALSYM IMAGE_REL_CEE_ABSOLUTE}
  IMAGE_REL_CEE_ADDR32   = $0001; // 32-bit address (VA).
  {$EXTERNALSYM IMAGE_REL_CEE_ADDR32}
  IMAGE_REL_CEE_ADDR64   = $0002; // 64-bit address (VA).
  {$EXTERNALSYM IMAGE_REL_CEE_ADDR64}
  IMAGE_REL_CEE_ADDR32NB = $0003; // 32-bit address w/o image base (RVA).
  {$EXTERNALSYM IMAGE_REL_CEE_ADDR32NB}
  IMAGE_REL_CEE_SECTION  = $0004; // Section index
  {$EXTERNALSYM IMAGE_REL_CEE_SECTION}
  IMAGE_REL_CEE_SECREL   = $0005; // 32 bit offset from base of section containing target
  {$EXTERNALSYM IMAGE_REL_CEE_SECREL}
  IMAGE_REL_CEE_TOKEN    = $0006; // 32 bit metadata token
  {$EXTERNALSYM IMAGE_REL_CEE_TOKEN}

  IMAGE_REL_M32R_ABSOLUTE = $0000; // No relocation required
  {$EXTERNALSYM IMAGE_REL_M32R_ABSOLUTE}
  IMAGE_REL_M32R_ADDR32   = $0001; // 32 bit address
  {$EXTERNALSYM IMAGE_REL_M32R_ADDR32}
  IMAGE_REL_M32R_ADDR32NB = $0002; // 32 bit address w/o image base
  {$EXTERNALSYM IMAGE_REL_M32R_ADDR32NB}
  IMAGE_REL_M32R_ADDR24   = $0003; // 24 bit address
  {$EXTERNALSYM IMAGE_REL_M32R_ADDR24}
  IMAGE_REL_M32R_GPREL16  = $0004; // GP relative addressing
  {$EXTERNALSYM IMAGE_REL_M32R_GPREL16}
  IMAGE_REL_M32R_PCREL24  = $0005; // 24 bit offset << 2 & sign ext.
  {$EXTERNALSYM IMAGE_REL_M32R_PCREL24}
  IMAGE_REL_M32R_PCREL16  = $0006; // 16 bit offset << 2 & sign ext.
  {$EXTERNALSYM IMAGE_REL_M32R_PCREL16}
  IMAGE_REL_M32R_PCREL8   = $0007; // 8 bit offset << 2 & sign ext.
  {$EXTERNALSYM IMAGE_REL_M32R_PCREL8}
  IMAGE_REL_M32R_REFHALF  = $0008; // 16 MSBs
  {$EXTERNALSYM IMAGE_REL_M32R_REFHALF}
  IMAGE_REL_M32R_REFHI    = $0009; // 16 MSBs; adj for LSB sign ext.
  {$EXTERNALSYM IMAGE_REL_M32R_REFHI}
  IMAGE_REL_M32R_REFLO    = $000A; // 16 LSBs
  {$EXTERNALSYM IMAGE_REL_M32R_REFLO}
  IMAGE_REL_M32R_PAIR     = $000B; // Link HI and LO
  {$EXTERNALSYM IMAGE_REL_M32R_PAIR}
  IMAGE_REL_M32R_SECTION  = $000C; // Section table index
  {$EXTERNALSYM IMAGE_REL_M32R_SECTION}
  IMAGE_REL_M32R_SECREL32 = $000D; // 32 bit section relative reference
  {$EXTERNALSYM IMAGE_REL_M32R_SECREL32}
  IMAGE_REL_M32R_TOKEN    = $000E; // clr token
  {$EXTERNALSYM IMAGE_REL_M32R_TOKEN}

  IMAGE_REL_EBC_ABSOLUTE              = $0000;  // No relocation required
  {$EXTERNALSYM IMAGE_REL_EBC_ABSOLUTE}
  IMAGE_REL_EBC_ADDR32NB              = $0001;  // 32 bit address w/o image base
  {$EXTERNALSYM IMAGE_REL_EBC_ADDR32NB}
  IMAGE_REL_EBC_REL32                 = $0002;  // 32-bit relative address from byte following reloc
  {$EXTERNALSYM IMAGE_REL_EBC_REL32}
  IMAGE_REL_EBC_SECTION               = $0003;  // Section table index
  {$EXTERNALSYM IMAGE_REL_EBC_SECTION}
  IMAGE_REL_EBC_SECREL                = $0004;  // Offset within section
  {$EXTERNALSYM IMAGE_REL_EBC_SECREL}

// Please contact INTEL to get IA64-specific information

(* TODO
#define EXT_IMM64(Value, Address, Size, InstPos, ValPos)
    Value |= (((ULONGLONG)((*(Address) >> InstPos) & (((ULONGLONG)1 << Size) - 1))) << ValPos)  // Intel-IA64-Filler

#define INS_IMM64(Value, Address, Size, InstPos, ValPos)  /* Intel-IA64-Filler */\
    *(PDWORD)Address = (*(PDWORD)Address & ~(((1 << Size) - 1) << InstPos)) | /* Intel-IA64-Filler */\
          ((DWORD)((((ULONGLONG)Value >> ValPos) & (((ULONGLONG)1 << Size) - 1))) << InstPos)  // Intel-IA64-Filler
*)

const
  EMARCH_ENC_I17_IMM7B_INST_WORD_X     = 3; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM7B_INST_WORD_X}
  EMARCH_ENC_I17_IMM7B_SIZE_X          = 7; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM7B_SIZE_X}
  EMARCH_ENC_I17_IMM7B_INST_WORD_POS_X = 4; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM7B_INST_WORD_POS_X}
  EMARCH_ENC_I17_IMM7B_VAL_POS_X       = 0; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM7B_VAL_POS_X}

  EMARCH_ENC_I17_IMM9D_INST_WORD_X     = 3; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM9D_INST_WORD_X}
  EMARCH_ENC_I17_IMM9D_SIZE_X          = 9; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM9D_SIZE_X}
  EMARCH_ENC_I17_IMM9D_INST_WORD_POS_X = 18; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM9D_INST_WORD_POS_X}
  EMARCH_ENC_I17_IMM9D_VAL_POS_X       = 7; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM9D_VAL_POS_X}

  EMARCH_ENC_I17_IMM5C_INST_WORD_X     = 3; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM5C_INST_WORD_X}
  EMARCH_ENC_I17_IMM5C_SIZE_X          = 5; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM5C_SIZE_X}
  EMARCH_ENC_I17_IMM5C_INST_WORD_POS_X = 13; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM5C_INST_WORD_POS_X}
  EMARCH_ENC_I17_IMM5C_VAL_POS_X       = 16; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM5C_VAL_POS_X}

  EMARCH_ENC_I17_IC_INST_WORD_X     = 3; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IC_INST_WORD_X}
  EMARCH_ENC_I17_IC_SIZE_X          = 1; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IC_SIZE_X}
  EMARCH_ENC_I17_IC_INST_WORD_POS_X = 12; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IC_INST_WORD_POS_X}
  EMARCH_ENC_I17_IC_VAL_POS_X       = 21; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IC_VAL_POS_X}

  EMARCH_ENC_I17_IMM41a_INST_WORD_X     = 1; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM41a_INST_WORD_X}
  EMARCH_ENC_I17_IMM41a_SIZE_X          = 10; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM41a_SIZE_X}
  EMARCH_ENC_I17_IMM41a_INST_WORD_POS_X = 14; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM41a_INST_WORD_POS_X}
  EMARCH_ENC_I17_IMM41a_VAL_POS_X       = 22; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM41a_VAL_POS_X}

  EMARCH_ENC_I17_IMM41b_INST_WORD_X     = 1; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM41b_INST_WORD_X}
  EMARCH_ENC_I17_IMM41b_SIZE_X          = 8; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM41b_SIZE_X}
  EMARCH_ENC_I17_IMM41b_INST_WORD_POS_X = 24; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM41b_INST_WORD_POS_X}
  EMARCH_ENC_I17_IMM41b_VAL_POS_X       = 32; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM41b_VAL_POS_X}

  EMARCH_ENC_I17_IMM41c_INST_WORD_X     = 2; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM41c_INST_WORD_X}
  EMARCH_ENC_I17_IMM41c_SIZE_X          = 23; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM41c_SIZE_X}
  EMARCH_ENC_I17_IMM41c_INST_WORD_POS_X = 0; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM41c_INST_WORD_POS_X}
  EMARCH_ENC_I17_IMM41c_VAL_POS_X       = 40; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_IMM41c_VAL_POS_X}

  EMARCH_ENC_I17_SIGN_INST_WORD_X     = 3; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_SIGN_INST_WORD_X}
  EMARCH_ENC_I17_SIGN_SIZE_X          = 1; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_SIGN_SIZE_X}
  EMARCH_ENC_I17_SIGN_INST_WORD_POS_X = 27; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_SIGN_INST_WORD_POS_X}
  EMARCH_ENC_I17_SIGN_VAL_POS_X       = 63; // Intel-IA64-Filler
  {$EXTERNALSYM EMARCH_ENC_I17_SIGN_VAL_POS_X}

  {$EXTERNALSYM X3_OPCODE_INST_WORD_X}
  X3_OPCODE_INST_WORD_X               = 3;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_OPCODE_SIZE_X}
  X3_OPCODE_SIZE_X                    = 4;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_OPCODE_INST_WORD_POS_X}
  X3_OPCODE_INST_WORD_POS_X           = 28;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_OPCODE_SIGN_VAL_POS_X}
  X3_OPCODE_SIGN_VAL_POS_X            = 0;  // Intel-IA64-Filler

  {$EXTERNALSYM X3_I_INST_WORD_X}
  X3_I_INST_WORD_X                    = 3;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_I_SIZE_X}
  X3_I_SIZE_X                         = 1;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_I_INST_WORD_POS_X}
  X3_I_INST_WORD_POS_X                = 27;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_I_SIGN_VAL_POS_X}
  X3_I_SIGN_VAL_POS_X                 = 59;  // Intel-IA64-Filler

  {$EXTERNALSYM X3_D_WH_INST_WORD_X}
  X3_D_WH_INST_WORD_X                 = 3;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_D_WH_SIZE_X}
  X3_D_WH_SIZE_X                      = 3;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_D_WH_INST_WORD_POS_X}
  X3_D_WH_INST_WORD_POS_X             = 24;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_D_WH_SIGN_VAL_POS_X}
  X3_D_WH_SIGN_VAL_POS_X              = 0;  // Intel-IA64-Filler

  {$EXTERNALSYM X3_IMM20_INST_WORD_X}
  X3_IMM20_INST_WORD_X                = 3;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_IMM20_SIZE_X}
  X3_IMM20_SIZE_X                     = 20;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_IMM20_INST_WORD_POS_X}
  X3_IMM20_INST_WORD_POS_X            = 4;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_IMM20_SIGN_VAL_POS_X}
  X3_IMM20_SIGN_VAL_POS_X             = 0;  // Intel-IA64-Filler

  {$EXTERNALSYM X3_IMM39_1_INST_WORD_X}
  X3_IMM39_1_INST_WORD_X              = 2;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_IMM39_1_SIZE_X}
  X3_IMM39_1_SIZE_X                   = 23;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_IMM39_1_INST_WORD_POS_X}
  X3_IMM39_1_INST_WORD_POS_X          = 0;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_IMM39_1_SIGN_VAL_POS_X}
  X3_IMM39_1_SIGN_VAL_POS_X           = 36;  // Intel-IA64-Filler

  {$EXTERNALSYM X3_IMM39_2_INST_WORD_X}
  X3_IMM39_2_INST_WORD_X              = 1;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_IMM39_2_SIZE_X}
  X3_IMM39_2_SIZE_X                   = 16;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_IMM39_2_INST_WORD_POS_X}
  X3_IMM39_2_INST_WORD_POS_X          = 16;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_IMM39_2_SIGN_VAL_POS_X}
  X3_IMM39_2_SIGN_VAL_POS_X           = 20;  // Intel-IA64-Filler

  {$EXTERNALSYM X3_P_INST_WORD_X}
  X3_P_INST_WORD_X                    = 3;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_P_SIZE_X}
  X3_P_SIZE_X                         = 4;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_P_INST_WORD_POS_X}
  X3_P_INST_WORD_POS_X                = 0;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_P_SIGN_VAL_POS_X}
  X3_P_SIGN_VAL_POS_X                 = 0;  // Intel-IA64-Filler

  {$EXTERNALSYM X3_TMPLT_INST_WORD_X}
  X3_TMPLT_INST_WORD_X                = 0;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_TMPLT_SIZE_X}
  X3_TMPLT_SIZE_X                     = 4;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_TMPLT_INST_WORD_POS_X}
  X3_TMPLT_INST_WORD_POS_X            = 0;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_TMPLT_SIGN_VAL_POS_X}
  X3_TMPLT_SIGN_VAL_POS_X             = 0;  // Intel-IA64-Filler

  {$EXTERNALSYM X3_BTYPE_QP_INST_WORD_X}
  X3_BTYPE_QP_INST_WORD_X             = 2;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_BTYPE_QP_SIZE_X}
  X3_BTYPE_QP_SIZE_X                  = 9;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_BTYPE_QP_INST_WORD_POS_X}
  X3_BTYPE_QP_INST_WORD_POS_X         = 23;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_BTYPE_QP_INST_VAL_POS_X}
  X3_BTYPE_QP_INST_VAL_POS_X          = 0;  // Intel-IA64-Filler

  {$EXTERNALSYM X3_EMPTY_INST_WORD_X}
  X3_EMPTY_INST_WORD_X                = 1;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_EMPTY_SIZE_X}
  X3_EMPTY_SIZE_X                     = 2;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_EMPTY_INST_WORD_POS_X}
  X3_EMPTY_INST_WORD_POS_X            = 14;  // Intel-IA64-Filler
  {$EXTERNALSYM X3_EMPTY_INST_VAL_POS_X}
  X3_EMPTY_INST_VAL_POS_X             = 0;  // Intel-IA64-Filler

//
// Line number format.
//

type
  TImgLineNoType = record
    case Integer of
      0: (SymbolTableIndex: DWORD);               // Symbol table index of function name if Linenumber is 0.
      1: (VirtualAddress: DWORD);                 // Virtual address of line number.
  end;

  PIMAGE_LINENUMBER = ^IMAGE_LINENUMBER;
  {$EXTERNALSYM PIMAGE_LINENUMBER}
  _IMAGE_LINENUMBER = record
    Type_: TImgLineNoType;
    Linenumber: WORD;                         // Line number.
  end;
  {$EXTERNALSYM _IMAGE_LINENUMBER}
  IMAGE_LINENUMBER = _IMAGE_LINENUMBER;
  {$EXTERNALSYM IMAGE_LINENUMBER}
  TImageLineNumber = IMAGE_LINENUMBER;
  PImageLineNumber = PIMAGE_LINENUMBER;

const
  IMAGE_SIZEOF_LINENUMBER = 6;
  {$EXTERNALSYM IMAGE_SIZEOF_LINENUMBER}

// #include "poppack.h"                        // Back to 4 byte packing

//
// Based relocation format.
//

type
  PIMAGE_BASE_RELOCATION = ^IMAGE_BASE_RELOCATION;
  {$EXTERNALSYM PIMAGE_BASE_RELOCATION}
  _IMAGE_BASE_RELOCATION = record
    VirtualAddress: DWORD;
    SizeOfBlock: DWORD;
    //  WORD    TypeOffset[1];
  end;
  {$EXTERNALSYM _IMAGE_BASE_RELOCATION}
  IMAGE_BASE_RELOCATION = _IMAGE_BASE_RELOCATION;
  {$EXTERNALSYM IMAGE_BASE_RELOCATION}
  TImageBaseRelocation = IMAGE_BASE_RELOCATION;
  PImageBaseRelocation = PIMAGE_BASE_RELOCATION;

const
  IMAGE_SIZEOF_BASE_RELOCATION = 8;
  {$EXTERNALSYM IMAGE_SIZEOF_BASE_RELOCATION}

//
// Based relocation types.
//

  IMAGE_REL_BASED_ABSOLUTE     = 0;
  {$EXTERNALSYM IMAGE_REL_BASED_ABSOLUTE}
  IMAGE_REL_BASED_HIGH         = 1;
  {$EXTERNALSYM IMAGE_REL_BASED_HIGH}
  IMAGE_REL_BASED_LOW          = 2;
  {$EXTERNALSYM IMAGE_REL_BASED_LOW}
  IMAGE_REL_BASED_HIGHLOW      = 3;
  {$EXTERNALSYM IMAGE_REL_BASED_HIGHLOW}
  IMAGE_REL_BASED_HIGHADJ      = 4;
  {$EXTERNALSYM IMAGE_REL_BASED_HIGHADJ}
  IMAGE_REL_BASED_MIPS_JMPADDR = 5;
  {$EXTERNALSYM IMAGE_REL_BASED_MIPS_JMPADDR}

  IMAGE_REL_BASED_MIPS_JMPADDR16 = 9;
  {$EXTERNALSYM IMAGE_REL_BASED_MIPS_JMPADDR16}
  IMAGE_REL_BASED_IA64_IMM64     = 9;
  {$EXTERNALSYM IMAGE_REL_BASED_IA64_IMM64}
  IMAGE_REL_BASED_DIR64          = 10;
  {$EXTERNALSYM IMAGE_REL_BASED_DIR64}

//
// Archive format.
//

  IMAGE_ARCHIVE_START_SIZE       = 8;
  {$EXTERNALSYM IMAGE_ARCHIVE_START_SIZE}
  IMAGE_ARCHIVE_START            = '!<arch>'#10;
  {$EXTERNALSYM IMAGE_ARCHIVE_START}
  IMAGE_ARCHIVE_END              = '`'#10;
  {$EXTERNALSYM IMAGE_ARCHIVE_END}
  IMAGE_ARCHIVE_PAD              = #10;
  {$EXTERNALSYM IMAGE_ARCHIVE_PAD}
  IMAGE_ARCHIVE_LINKER_MEMBER    = '/               ';
  {$EXTERNALSYM IMAGE_ARCHIVE_LINKER_MEMBER}
  IMAGE_ARCHIVE_LONGNAMES_MEMBER = '//              ';
  {$EXTERNALSYM IMAGE_ARCHIVE_LONGNAMES_MEMBER}

type
  PIMAGE_ARCHIVE_MEMBER_HEADER = ^IMAGE_ARCHIVE_MEMBER_HEADER;
  {$EXTERNALSYM PIMAGE_ARCHIVE_MEMBER_HEADER}
  _IMAGE_ARCHIVE_MEMBER_HEADER = record
    Name: array [0..15] of Byte; // File member name - `/' terminated.
    Date: array [0..11] of Byte; // File member date - decimal.
    UserID: array [0..5] of Byte; // File member user id - decimal.
    GroupID: array [0..5] of Byte; // File member group id - decimal.
    Mode: array [0..7] of Byte; // File member mode - octal.
    Size: array [0..9] of Byte; // File member size - decimal.
    EndHeader: array [0..1] of Byte; // String to end header.
  end;
  {$EXTERNALSYM _IMAGE_ARCHIVE_MEMBER_HEADER}
  IMAGE_ARCHIVE_MEMBER_HEADER = _IMAGE_ARCHIVE_MEMBER_HEADER;
  {$EXTERNALSYM IMAGE_ARCHIVE_MEMBER_HEADER}
  TImageArchiveMemberHeader = IMAGE_ARCHIVE_MEMBER_HEADER;
  PImageArchiveMemberHeader = PIMAGE_ARCHIVE_MEMBER_HEADER;

const
  IMAGE_SIZEOF_ARCHIVE_MEMBER_HDR = 60;
  {$EXTERNALSYM IMAGE_SIZEOF_ARCHIVE_MEMBER_HDR}

//
// DLL support.
//

//
// Export Format
//

type
  PIMAGE_EXPORT_DIRECTORY = ^IMAGE_EXPORT_DIRECTORY;
  {$EXTERNALSYM PIMAGE_EXPORT_DIRECTORY}
  _IMAGE_EXPORT_DIRECTORY = record
    Characteristics: DWORD;
    TimeDateStamp: DWORD;
    MajorVersion: Word;
    MinorVersion: Word;
    Name: DWORD;
    Base: DWORD;
    NumberOfFunctions: DWORD;
    NumberOfNames: DWORD;
    AddressOfFunctions: DWORD; // RVA from base of image
    AddressOfNames: DWORD; // RVA from base of image
    AddressOfNameOrdinals: DWORD; // RVA from base of image
  end;
  {$EXTERNALSYM _IMAGE_EXPORT_DIRECTORY}
  IMAGE_EXPORT_DIRECTORY = _IMAGE_EXPORT_DIRECTORY;
  {$EXTERNALSYM IMAGE_EXPORT_DIRECTORY}
  TImageExportDirectory = IMAGE_EXPORT_DIRECTORY;
  PImageExportDirectory = PIMAGE_EXPORT_DIRECTORY;

//
// Import Format
//

  PIMAGE_IMPORT_BY_NAME = ^IMAGE_IMPORT_BY_NAME;
  {$EXTERNALSYM PIMAGE_IMPORT_BY_NAME}
  _IMAGE_IMPORT_BY_NAME = record
    Hint: Word;
    Name: array [0..0] of Byte;
  end;
  {$EXTERNALSYM _IMAGE_IMPORT_BY_NAME}
  IMAGE_IMPORT_BY_NAME = _IMAGE_IMPORT_BY_NAME;
  {$EXTERNALSYM IMAGE_IMPORT_BY_NAME}
  TImageImportByName = IMAGE_IMPORT_BY_NAME;
  PImageImportByName = PIMAGE_IMPORT_BY_NAME;

{$ALIGN 8}                                 // Use align 8 for the 64-bit IAT.

  PIMAGE_THUNK_DATA64 = ^IMAGE_THUNK_DATA64;
  {$EXTERNALSYM PIMAGE_THUNK_DATA64}
  _IMAGE_THUNK_DATA64 = record
    case Integer of
      0: (ForwarderString: ULONGLONG);   // PBYTE
      1: (Function_: ULONGLONG);         // PDWORD
      2: (Ordinal: ULONGLONG);
      3: (AddressOfData: ULONGLONG);     // PIMAGE_IMPORT_BY_NAME
  end;
  {$EXTERNALSYM _IMAGE_THUNK_DATA64}
  IMAGE_THUNK_DATA64 = _IMAGE_THUNK_DATA64;
  {$EXTERNALSYM IMAGE_THUNK_DATA64}
  TImageThunkData64 = IMAGE_THUNK_DATA64;
  PImageThunkData64 = PIMAGE_THUNK_DATA64;

{$ALIGN 4}                                // Back to 4 byte packing

  PIMAGE_THUNK_DATA32 = ^IMAGE_THUNK_DATA32;
  {$EXTERNALSYM PIMAGE_THUNK_DATA32}
  _IMAGE_THUNK_DATA32 = record
    case Integer of
      0: (ForwarderString: DWORD);   // PBYTE
      1: (Function_: DWORD);         // PDWORD
      2: (Ordinal: DWORD);
      3: (AddressOfData: DWORD);     // PIMAGE_IMPORT_BY_NAME
  end;
  {$EXTERNALSYM _IMAGE_THUNK_DATA32}
  IMAGE_THUNK_DATA32 = _IMAGE_THUNK_DATA32;
  {$EXTERNALSYM IMAGE_THUNK_DATA32}
  TImageThunkData32 = IMAGE_THUNK_DATA32;
  PImageThunkData32 = PIMAGE_THUNK_DATA32;

const
  IMAGE_ORDINAL_FLAG64 = ULONGLONG($8000000000000000);
  {$EXTERNALSYM IMAGE_ORDINAL_FLAG64}
  IMAGE_ORDINAL_FLAG32 = DWORD($80000000);
  {$EXTERNALSYM IMAGE_ORDINAL_FLAG32}

function IMAGE_ORDINAL64(Ordinal: ULONGLONG): ULONGLONG;
{$EXTERNALSYM IMAGE_ORDINAL64}
function IMAGE_ORDINAL32(Ordinal: DWORD): DWORD;
{$EXTERNALSYM IMAGE_ORDINAL32}
function IMAGE_SNAP_BY_ORDINAL64(Ordinal: ULONGLONG): Boolean;
{$EXTERNALSYM IMAGE_SNAP_BY_ORDINAL64}
function IMAGE_SNAP_BY_ORDINAL32(Ordinal: DWORD): Boolean;
{$EXTERNALSYM IMAGE_SNAP_BY_ORDINAL32}

//
// Thread Local Storage
//

type
  PIMAGE_TLS_CALLBACK = procedure(DllHandle: Pointer; Reason: DWORD; Reserved: Pointer); stdcall;
  {$EXTERNALSYM PIMAGE_TLS_CALLBACK}
  TImageTlsCallback = PIMAGE_TLS_CALLBACK;

  PIMAGE_TLS_DIRECTORY64 = ^IMAGE_TLS_DIRECTORY64;
  {$EXTERNALSYM PIMAGE_TLS_DIRECTORY64}
  _IMAGE_TLS_DIRECTORY64 = record
    StartAddressOfRawData: ULONGLONG;
    EndAddressOfRawData: ULONGLONG;
    AddressOfIndex: ULONGLONG;         // PDWORD
    AddressOfCallBacks: ULONGLONG;     // PIMAGE_TLS_CALLBACK *;
    SizeOfZeroFill: DWORD;
    Characteristics: DWORD;
  end;
  {$EXTERNALSYM _IMAGE_TLS_DIRECTORY64}
  IMAGE_TLS_DIRECTORY64 = _IMAGE_TLS_DIRECTORY64;
  {$EXTERNALSYM IMAGE_TLS_DIRECTORY64}
  TImageTlsDirectory64 = IMAGE_TLS_DIRECTORY64;
  PImageTlsDirectory64 = PIMAGE_TLS_DIRECTORY64;

  PIMAGE_TLS_DIRECTORY32 = ^IMAGE_TLS_DIRECTORY32;
  {$EXTERNALSYM PIMAGE_TLS_DIRECTORY32}
  _IMAGE_TLS_DIRECTORY32 = record
    StartAddressOfRawData: DWORD;
    EndAddressOfRawData: DWORD;
    AddressOfIndex: DWORD;             // PDWORD
    AddressOfCallBacks: DWORD;         // PIMAGE_TLS_CALLBACK *
    SizeOfZeroFill: DWORD;
    Characteristics: DWORD;
  end;
  {$EXTERNALSYM _IMAGE_TLS_DIRECTORY32}
  IMAGE_TLS_DIRECTORY32 = _IMAGE_TLS_DIRECTORY32;
  {$EXTERNALSYM IMAGE_TLS_DIRECTORY32}
  TImageTlsDirectory32 = IMAGE_TLS_DIRECTORY32;
  PImageTlsDirectory32 = PIMAGE_TLS_DIRECTORY32;

const
  IMAGE_ORDINAL_FLAG = IMAGE_ORDINAL_FLAG32;
  {$EXTERNALSYM IMAGE_ORDINAL_FLAG}

function IMAGE_ORDINAL(Ordinal: DWORD): DWORD;

type
  IMAGE_THUNK_DATA = IMAGE_THUNK_DATA32;
  {$EXTERNALSYM IMAGE_THUNK_DATA}
  PIMAGE_THUNK_DATA = PIMAGE_THUNK_DATA32;
  {$EXTERNALSYM PIMAGE_THUNK_DATA}
  TImageThunkData = TImageThunkData32;
  PImageThunkData = PImageThunkData32;

function IMAGE_SNAP_BY_ORDINAL(Ordinal: DWORD): Boolean;
{$EXTERNALSYM IMAGE_SNAP_BY_ORDINAL}

type
  IMAGE_TLS_DIRECTORY = IMAGE_TLS_DIRECTORY32;
  {$EXTERNALSYM IMAGE_TLS_DIRECTORY}
  PIMAGE_TLS_DIRECTORY = PIMAGE_TLS_DIRECTORY32;
  {$EXTERNALSYM PIMAGE_TLS_DIRECTORY}
  TImageTlsDirectory = TImageTlsDirectory32;
  PImageTlsDirectory = PImageTlsDirectory32;

  TIIDUnion = record
    case Integer of
      0: (Characteristics: DWORD);         // 0 for terminating null import descriptor
      1: (OriginalFirstThunk: DWORD);      // RVA to original unbound IAT (PIMAGE_THUNK_DATA)
  end;

  PIMAGE_IMPORT_DESCRIPTOR = ^IMAGE_IMPORT_DESCRIPTOR;
  {$EXTERNALSYM PIMAGE_IMPORT_DESCRIPTOR}
  _IMAGE_IMPORT_DESCRIPTOR = record
    Union: TIIDUnion;
    TimeDateStamp: DWORD;                  // 0 if not bound,
                                           // -1 if bound, and real date\time stamp
                                           //     in IMAGE_DIRECTORY_ENTRY_BOUND_IMPORT (new BIND)
                                           // O.W. date/time stamp of DLL bound to (Old BIND)

    ForwarderChain: DWORD;                 // -1 if no forwarders
    Name: DWORD;
    FirstThunk: DWORD;                     // RVA to IAT (if bound this IAT has actual addresses)
  end;
  {$EXTERNALSYM _IMAGE_IMPORT_DESCRIPTOR}
  IMAGE_IMPORT_DESCRIPTOR = _IMAGE_IMPORT_DESCRIPTOR;
  {$EXTERNALSYM IMAGE_IMPORT_DESCRIPTOR}
  TImageImportDecriptor = IMAGE_IMPORT_DESCRIPTOR;
  PImageImportDecriptor = PIMAGE_IMPORT_DESCRIPTOR;

//
// New format import descriptors pointed to by DataDirectory[ IMAGE_DIRECTORY_ENTRY_BOUND_IMPORT ]
//

type
  PIMAGE_BOUND_IMPORT_DESCRIPTOR = ^IMAGE_BOUND_IMPORT_DESCRIPTOR;
  {$EXTERNALSYM PIMAGE_BOUND_IMPORT_DESCRIPTOR}
  _IMAGE_BOUND_IMPORT_DESCRIPTOR = record
    TimeDateStamp: DWORD;
    OffsetModuleName: Word;
    NumberOfModuleForwarderRefs: Word;
    // Array of zero or more IMAGE_BOUND_FORWARDER_REF follows
  end;
  {$EXTERNALSYM _IMAGE_BOUND_IMPORT_DESCRIPTOR}
  IMAGE_BOUND_IMPORT_DESCRIPTOR = _IMAGE_BOUND_IMPORT_DESCRIPTOR;
  {$EXTERNALSYM IMAGE_BOUND_IMPORT_DESCRIPTOR}
  TImageBoundImportDescriptor = IMAGE_BOUND_IMPORT_DESCRIPTOR;
  PImageBoundImportDescriptor = PIMAGE_BOUND_IMPORT_DESCRIPTOR;

  PIMAGE_BOUND_FORWARDER_REF = ^IMAGE_BOUND_FORWARDER_REF;
  {$EXTERNALSYM PIMAGE_BOUND_FORWARDER_REF}
  _IMAGE_BOUND_FORWARDER_REF = record
    TimeDateStamp: DWORD;
    OffsetModuleName: Word;
    Reserved: Word;
  end;
  {$EXTERNALSYM _IMAGE_BOUND_FORWARDER_REF}
  IMAGE_BOUND_FORWARDER_REF = _IMAGE_BOUND_FORWARDER_REF;
  {$EXTERNALSYM IMAGE_BOUND_FORWARDER_REF}
  TImageBoundForwarderRef = IMAGE_BOUND_FORWARDER_REF;
  PImageBoundForwarderRef = PIMAGE_BOUND_FORWARDER_REF;

//
// Resource Format.
//

//
// Resource directory consists of two counts, following by a variable length
// array of directory entries.  The first count is the number of entries at
// beginning of the array that have actual names associated with each entry.
// The entries are in ascending order, case insensitive strings.  The second
// count is the number of entries that immediately follow the named entries.
// This second count identifies the number of entries that have 16-bit integer
// Ids as their name.  These entries are also sorted in ascending order.
//
// This structure allows fast lookup by either name or number, but for any
// given resource entry only one form of lookup is supported, not both.
// This is consistant with the syntax of the .RC file and the .RES file.
//

  PIMAGE_RESOURCE_DIRECTORY = ^IMAGE_RESOURCE_DIRECTORY;
  {$EXTERNALSYM PIMAGE_RESOURCE_DIRECTORY}
  _IMAGE_RESOURCE_DIRECTORY = record
    Characteristics: DWORD;
    TimeDateStamp: DWORD;
    MajorVersion: Word;
    MinorVersion: Word;
    NumberOfNamedEntries: Word;
    NumberOfIdEntries: Word;
    // IMAGE_RESOURCE_DIRECTORY_ENTRY DirectoryEntries[];
  end;
  {$EXTERNALSYM _IMAGE_RESOURCE_DIRECTORY}
  IMAGE_RESOURCE_DIRECTORY = _IMAGE_RESOURCE_DIRECTORY;
  {$EXTERNALSYM IMAGE_RESOURCE_DIRECTORY}
  TImageResourceDirectory = IMAGE_RESOURCE_DIRECTORY;
  PImageResourceDirectory = PIMAGE_RESOURCE_DIRECTORY;

const
  IMAGE_RESOURCE_NAME_IS_STRING    = DWORD($80000000);
  {$EXTERNALSYM IMAGE_RESOURCE_NAME_IS_STRING}
  IMAGE_RESOURCE_DATA_IS_DIRECTORY = DWORD($80000000);
  {$EXTERNALSYM IMAGE_RESOURCE_DATA_IS_DIRECTORY}

//
// Each directory contains the 32-bit Name of the entry and an offset,
// relative to the beginning of the resource directory of the data associated
// with this directory entry.  If the name of the entry is an actual text
// string instead of an integer Id, then the high order bit of the name field
// is set to one and the low order 31-bits are an offset, relative to the
// beginning of the resource directory of the string, which is of type
// IMAGE_RESOURCE_DIRECTORY_STRING.  Otherwise the high bit is clear and the
// low-order 16-bits are the integer Id that identify this resource directory
// entry. If the directory entry is yet another resource directory (i.e. a
// subdirectory), then the high order bit of the offset field will be
// set to indicate this.  Otherwise the high bit is clear and the offset
// field points to a resource data entry.
//

type
  TIRDEName = record
    case Integer of
      0: (
        NameOffset: DWORD); // 0..30: NameOffset; 31: NameIsString
      1: (
        Name: DWORD);
      2: (
        Id: WORD);
  end;

  TIRDEDirectory = record
    case Integer of
      0: (
        OffsetToData: DWORD);
      1: (
        OffsetToDirectory: DWORD); // 0..30: OffsetToDirectory; 31: DataIsDirectory
  end;

  PIMAGE_RESOURCE_DIRECTORY_ENTRY = ^IMAGE_RESOURCE_DIRECTORY_ENTRY;
  {$EXTERNALSYM PIMAGE_RESOURCE_DIRECTORY_ENTRY}
  _IMAGE_RESOURCE_DIRECTORY_ENTRY = record
    Name: TIRDEName;
    Directory: TIRDEDirectory;
  end;
  {$EXTERNALSYM _IMAGE_RESOURCE_DIRECTORY_ENTRY}
  IMAGE_RESOURCE_DIRECTORY_ENTRY = _IMAGE_RESOURCE_DIRECTORY_ENTRY;
  {$EXTERNALSYM IMAGE_RESOURCE_DIRECTORY_ENTRY}
  TImageResourceDirectoryEntry = IMAGE_RESOURCE_DIRECTORY_ENTRY;
  PImageResourceDirectoryEntry = PIMAGE_RESOURCE_DIRECTORY_ENTRY;

//
// For resource directory entries that have actual string names, the Name
// field of the directory entry points to an object of the following type.
// All of these string objects are stored together after the last resource
// directory entry and before the first resource data object.  This minimizes
// the impact of these variable length objects on the alignment of the fixed
// size directory entry objects.
//

type
  PIMAGE_RESOURCE_DIRECTORY_STRING = ^IMAGE_RESOURCE_DIRECTORY_STRING;
  {$EXTERNALSYM PIMAGE_RESOURCE_DIRECTORY_STRING}
  _IMAGE_RESOURCE_DIRECTORY_STRING = record
    Length: Word;
    NameString: array [0..0] of AnsiChar;
  end;
  {$EXTERNALSYM _IMAGE_RESOURCE_DIRECTORY_STRING}
  IMAGE_RESOURCE_DIRECTORY_STRING = _IMAGE_RESOURCE_DIRECTORY_STRING;
  {$EXTERNALSYM IMAGE_RESOURCE_DIRECTORY_STRING}
  TImageResourceDirectoryString = IMAGE_RESOURCE_DIRECTORY_STRING;
  PImageResourceDirectoryString = PIMAGE_RESOURCE_DIRECTORY_STRING;

  PIMAGE_RESOURCE_DIR_STRING_U = ^IMAGE_RESOURCE_DIR_STRING_U;
  {$EXTERNALSYM PIMAGE_RESOURCE_DIR_STRING_U}
  _IMAGE_RESOURCE_DIR_STRING_U = record
    Length: Word;
    NameString: array [0..0] of WCHAR;
  end;
  {$EXTERNALSYM _IMAGE_RESOURCE_DIR_STRING_U}
  IMAGE_RESOURCE_DIR_STRING_U = _IMAGE_RESOURCE_DIR_STRING_U;
  {$EXTERNALSYM IMAGE_RESOURCE_DIR_STRING_U}
  TImageResourceDirStringU = IMAGE_RESOURCE_DIR_STRING_U;
  PImageResourceDirStringU = PIMAGE_RESOURCE_DIR_STRING_U;

//
// Each resource data entry describes a leaf node in the resource directory
// tree.  It contains an offset, relative to the beginning of the resource
// directory of the data for the resource, a size field that gives the number
// of bytes of data at that offset, a CodePage that should be used when
// decoding code point values within the resource data.  Typically for new
// applications the code page would be the unicode code page.
//

  PIMAGE_RESOURCE_DATA_ENTRY = ^IMAGE_RESOURCE_DATA_ENTRY;
  {$EXTERNALSYM PIMAGE_RESOURCE_DATA_ENTRY}
  _IMAGE_RESOURCE_DATA_ENTRY = record
    OffsetToData: DWORD;
    Size: DWORD;
    CodePage: DWORD;
    Reserved: DWORD;
  end;
  {$EXTERNALSYM _IMAGE_RESOURCE_DATA_ENTRY}
  IMAGE_RESOURCE_DATA_ENTRY = _IMAGE_RESOURCE_DATA_ENTRY;
  {$EXTERNALSYM IMAGE_RESOURCE_DATA_ENTRY}
  TImageResourceDataEntry = IMAGE_RESOURCE_DATA_ENTRY;
  PImageResourceDataEntry = PIMAGE_RESOURCE_DATA_ENTRY;

//
// Load Configuration Directory Entry
//

type
  PIMAGE_LOAD_CONFIG_DIRECTORY32 = ^IMAGE_LOAD_CONFIG_DIRECTORY32;
  {$EXTERNALSYM PIMAGE_LOAD_CONFIG_DIRECTORY32}
  IMAGE_LOAD_CONFIG_DIRECTORY32 = record
    Size: DWORD;
    TimeDateStamp: DWORD;
    MajorVersion: WORD;
    MinorVersion: WORD;
    GlobalFlagsClear: DWORD;
    GlobalFlagsSet: DWORD;
    CriticalSectionDefaultTimeout: DWORD;
    DeCommitFreeBlockThreshold: DWORD;
    DeCommitTotalFreeThreshold: DWORD;
    LockPrefixTable: DWORD;            // VA
    MaximumAllocationSize: DWORD;
    VirtualMemoryThreshold: DWORD;
    ProcessHeapFlags: DWORD;
    ProcessAffinityMask: DWORD;
    CSDVersion: WORD;
    Reserved1: WORD;
    EditList: DWORD;                   // VA
    SecurityCookie: DWORD;             // VA
    SEHandlerTable: DWORD;             // VA
    SEHandlerCount: DWORD;
  end;
  {$EXTERNALSYM IMAGE_LOAD_CONFIG_DIRECTORY32}
  TImageLoadConfigDirectory32 = IMAGE_LOAD_CONFIG_DIRECTORY32;
  PImageLoadConfigDirectory32 = PIMAGE_LOAD_CONFIG_DIRECTORY32;

  PIMAGE_LOAD_CONFIG_DIRECTORY64 = ^IMAGE_LOAD_CONFIG_DIRECTORY64;
  {$EXTERNALSYM PIMAGE_LOAD_CONFIG_DIRECTORY64}
  IMAGE_LOAD_CONFIG_DIRECTORY64 = record
    Size: DWORD;
    TimeDateStamp: DWORD;
    MajorVersion: WORD;
    MinorVersion: WORD;
    GlobalFlagsClear: DWORD;
    GlobalFlagsSet: DWORD;
    CriticalSectionDefaultTimeout: DWORD;
    DeCommitFreeBlockThreshold: ULONGLONG;
    DeCommitTotalFreeThreshold: ULONGLONG;
    LockPrefixTable: ULONGLONG;         // VA
    MaximumAllocationSize: ULONGLONG;
    VirtualMemoryThreshold: ULONGLONG;
    ProcessAffinityMask: ULONGLONG;
    ProcessHeapFlags: DWORD;
    CSDVersion: WORD;
    Reserved1: WORD;
    EditList: ULONGLONG;                // VA
    SecurityCookie: ULONGLONG;             // VA
    SEHandlerTable: ULONGLONG;             // VA
    SEHandlerCount: ULONGLONG;
  end;
  {$EXTERNALSYM IMAGE_LOAD_CONFIG_DIRECTORY64}
  TImageLoadConfigDirectory64 = IMAGE_LOAD_CONFIG_DIRECTORY64;
  PImageLoadConfigDirectory64 = PIMAGE_LOAD_CONFIG_DIRECTORY64;

  IMAGE_LOAD_CONFIG_DIRECTORY = IMAGE_LOAD_CONFIG_DIRECTORY32;
  {$EXTERNALSYM IMAGE_LOAD_CONFIG_DIRECTORY}
  PIMAGE_LOAD_CONFIG_DIRECTORY = PIMAGE_LOAD_CONFIG_DIRECTORY32;
  {$EXTERNALSYM PIMAGE_LOAD_CONFIG_DIRECTORY}
  TImageLoadConfigDirectory = TImageLoadConfigDirectory32;
  PImageLoadConfigDirectory = PImageLoadConfigDirectory32;

//
// WIN CE Exception table format
//

//
// Function table entry format.  Function table is pointed to by the
// IMAGE_DIRECTORY_ENTRY_EXCEPTION directory entry.
//

type
  PIMAGE_CE_RUNTIME_FUNCTION_ENTRY = ^IMAGE_CE_RUNTIME_FUNCTION_ENTRY;
  {$EXTERNALSYM PIMAGE_CE_RUNTIME_FUNCTION_ENTRY}
  _IMAGE_CE_RUNTIME_FUNCTION_ENTRY = record
    FuncStart: DWORD;
    Flags: DWORD;
    //DWORD PrologLen : 8;
    //DWORD FuncLen : 22;
    //DWORD ThirtyTwoBit : 1;
    //DWORD ExceptionFlag : 1;
  end;
  {$EXTERNALSYM _IMAGE_CE_RUNTIME_FUNCTION_ENTRY}
  IMAGE_CE_RUNTIME_FUNCTION_ENTRY = _IMAGE_CE_RUNTIME_FUNCTION_ENTRY;
  {$EXTERNALSYM IMAGE_CE_RUNTIME_FUNCTION_ENTRY}
  TImageCERuntimeFunctionEntry = IMAGE_CE_RUNTIME_FUNCTION_ENTRY;
  PImageCERuntimeFunctionEntry = PIMAGE_CE_RUNTIME_FUNCTION_ENTRY;

//
// Debug Format
//

type
  PIMAGE_DEBUG_DIRECTORY = ^IMAGE_DEBUG_DIRECTORY;
  {$EXTERNALSYM PIMAGE_DEBUG_DIRECTORY}
  _IMAGE_DEBUG_DIRECTORY = record
    Characteristics: DWORD;
    TimeDateStamp: DWORD;
    MajorVersion: Word;
    MinorVersion: Word;
    Type_: DWORD;
    SizeOfData: DWORD;
    AddressOfRawData: DWORD;
    PointerToRawData: DWORD;
  end;
  {$EXTERNALSYM _IMAGE_DEBUG_DIRECTORY}
  IMAGE_DEBUG_DIRECTORY = _IMAGE_DEBUG_DIRECTORY;
  {$EXTERNALSYM IMAGE_DEBUG_DIRECTORY}
  TImageDebugDirectory = IMAGE_DEBUG_DIRECTORY;
  PImageDebugDirectory = PIMAGE_DEBUG_DIRECTORY;

const
  IMAGE_DEBUG_TYPE_UNKNOWN       = 0;
  {$EXTERNALSYM IMAGE_DEBUG_TYPE_UNKNOWN}
  IMAGE_DEBUG_TYPE_COFF          = 1;
  {$EXTERNALSYM IMAGE_DEBUG_TYPE_COFF}
  IMAGE_DEBUG_TYPE_CODEVIEW      = 2;
  {$EXTERNALSYM IMAGE_DEBUG_TYPE_CODEVIEW}
  IMAGE_DEBUG_TYPE_FPO           = 3;
  {$EXTERNALSYM IMAGE_DEBUG_TYPE_FPO}
  IMAGE_DEBUG_TYPE_MISC          = 4;
  {$EXTERNALSYM IMAGE_DEBUG_TYPE_MISC}
  IMAGE_DEBUG_TYPE_EXCEPTION     = 5;
  {$EXTERNALSYM IMAGE_DEBUG_TYPE_EXCEPTION}
  IMAGE_DEBUG_TYPE_FIXUP         = 6;
  {$EXTERNALSYM IMAGE_DEBUG_TYPE_FIXUP}
  IMAGE_DEBUG_TYPE_OMAP_TO_SRC   = 7;
  {$EXTERNALSYM IMAGE_DEBUG_TYPE_OMAP_TO_SRC}
  IMAGE_DEBUG_TYPE_OMAP_FROM_SRC = 8;
  {$EXTERNALSYM IMAGE_DEBUG_TYPE_OMAP_FROM_SRC}
  IMAGE_DEBUG_TYPE_BORLAND       = 9;
  {$EXTERNALSYM IMAGE_DEBUG_TYPE_BORLAND}
  IMAGE_DEBUG_TYPE_RESERVED10    = 10;
  {$EXTERNALSYM IMAGE_DEBUG_TYPE_RESERVED10}
  IMAGE_DEBUG_TYPE_CLSID         = 11;
  {$EXTERNALSYM IMAGE_DEBUG_TYPE_CLSID}

type
  PIMAGE_COFF_SYMBOLS_HEADER = ^IMAGE_COFF_SYMBOLS_HEADER;
  {$EXTERNALSYM PIMAGE_COFF_SYMBOLS_HEADER}
  _IMAGE_COFF_SYMBOLS_HEADER = record
    NumberOfSymbols: DWORD;
    LvaToFirstSymbol: DWORD;
    NumberOfLinenumbers: DWORD;
    LvaToFirstLinenumber: DWORD;
    RvaToFirstByteOfCode: DWORD;
    RvaToLastByteOfCode: DWORD;
    RvaToFirstByteOfData: DWORD;
    RvaToLastByteOfData: DWORD;
  end;
  {$EXTERNALSYM _IMAGE_COFF_SYMBOLS_HEADER}
  IMAGE_COFF_SYMBOLS_HEADER = _IMAGE_COFF_SYMBOLS_HEADER;
  {$EXTERNALSYM IMAGE_COFF_SYMBOLS_HEADER}
  TImageCoffSymbolsHeader = IMAGE_COFF_SYMBOLS_HEADER;
  PImageCoffSymbolsHeader = PIMAGE_COFF_SYMBOLS_HEADER;

const
  FRAME_FPO    = 0;
  {$EXTERNALSYM FRAME_FPO}
  FRAME_TRAP   = 1;
  {$EXTERNALSYM FRAME_TRAP}
  FRAME_TSS    = 2;
  {$EXTERNALSYM FRAME_TSS}
  FRAME_NONFPO = 3;
  {$EXTERNALSYM FRAME_NONFPO}

  FPOFLAGS_PROLOG   = $00FF; // # bytes in prolog
  FPOFLAGS_REGS     = $0700; // # regs saved
  FPOFLAGS_HAS_SEH  = $0800; // TRUE if SEH in func
  FPOFLAGS_USE_BP   = $1000; // TRUE if EBP has been allocated
  FPOFLAGS_RESERVED = $2000; // reserved for future use
  FPOFLAGS_FRAME    = $C000; // frame type

type
  PFPO_DATA = ^FPO_DATA;
  {$EXTERNALSYM PFPO_DATA}
  _FPO_DATA = record
    ulOffStart: DWORD;       // offset 1st byte of function code
    cbProcSize: DWORD;       // # bytes in function
    cdwLocals: DWORD;        // # bytes in locals/4
    cdwParams: WORD;         // # bytes in params/4
    Flags: WORD;
  end;
  {$EXTERNALSYM _FPO_DATA}
  FPO_DATA = _FPO_DATA;
  {$EXTERNALSYM FPO_DATA}
  TFpoData = FPO_DATA;
  PFpoData = PFPO_DATA;

const
  SIZEOF_RFPO_DATA = 16;
  {$EXTERNALSYM SIZEOF_RFPO_DATA}

  IMAGE_DEBUG_MISC_EXENAME = 1;
  {$EXTERNALSYM IMAGE_DEBUG_MISC_EXENAME}

type
  PIMAGE_DEBUG_MISC = ^IMAGE_DEBUG_MISC;
  {$EXTERNALSYM PIMAGE_DEBUG_MISC}
  _IMAGE_DEBUG_MISC = record
    DataType: DWORD;   // type of misc data, see defines
    Length: DWORD;     // total length of record, rounded to four byte multiple.
    Unicode: ByteBool; // TRUE if data is unicode string
    Reserved: array [0..2] of Byte;
    Data: array [0..0] of Byte; // Actual data
  end;
  {$EXTERNALSYM _IMAGE_DEBUG_MISC}
  IMAGE_DEBUG_MISC = _IMAGE_DEBUG_MISC;
  {$EXTERNALSYM IMAGE_DEBUG_MISC}
  TImageDebugMisc = IMAGE_DEBUG_MISC;
  PImageDebugMisc = PIMAGE_DEBUG_MISC;

//
// Function table extracted from MIPS/ALPHA/IA64 images.  Does not contain
// information needed only for runtime support.  Just those fields for
// each entry needed by a debugger.
//

  PIMAGE_FUNCTION_ENTRY = ^IMAGE_FUNCTION_ENTRY;
  {$EXTERNALSYM PIMAGE_FUNCTION_ENTRY}
  _IMAGE_FUNCTION_ENTRY = record
    StartingAddress: DWORD;
    EndingAddress: DWORD;
    EndOfPrologue: DWORD;
  end;
  {$EXTERNALSYM _IMAGE_FUNCTION_ENTRY}
  IMAGE_FUNCTION_ENTRY = _IMAGE_FUNCTION_ENTRY;
  {$EXTERNALSYM IMAGE_FUNCTION_ENTRY}
  TImageFunctionEntry = IMAGE_FUNCTION_ENTRY;
  PImageFunctionEntry = PIMAGE_FUNCTION_ENTRY;

  PIMAGE_FUNCTION_ENTRY64 = ^IMAGE_FUNCTION_ENTRY64;
  {$EXTERNALSYM PIMAGE_FUNCTION_ENTRY64}
  _IMAGE_FUNCTION_ENTRY64 = record
    StartingAddress: ULONGLONG;
    EndingAddress: ULONGLONG;
    case Integer of
      0: (EndOfPrologue: ULONGLONG);
      1: (UnwindInfoAddress: ULONGLONG);
  end;
  {$EXTERNALSYM _IMAGE_FUNCTION_ENTRY64}
  IMAGE_FUNCTION_ENTRY64 = _IMAGE_FUNCTION_ENTRY64;
  {$EXTERNALSYM IMAGE_FUNCTION_ENTRY64}
  TImageFunctionEntry64 = IMAGE_FUNCTION_ENTRY64;
  PImageFunctionEntry64 = PIMAGE_FUNCTION_ENTRY64;

//
// Debugging information can be stripped from an image file and placed
// in a separate .DBG file, whose file name part is the same as the
// image file name part (e.g. symbols for CMD.EXE could be stripped
// and placed in CMD.DBG).  This is indicated by the IMAGE_FILE_DEBUG_STRIPPED
// flag in the Characteristics field of the file header.  The beginning of
// the .DBG file contains the following structure which captures certain
// information from the image file.  This allows a debug to proceed even if
// the original image file is not accessable.  This header is followed by
// zero of more IMAGE_SECTION_HEADER structures, followed by zero or more
// IMAGE_DEBUG_DIRECTORY structures.  The latter structures and those in
// the image file contain file offsets relative to the beginning of the
// .DBG file.
//
// If symbols have been stripped from an image, the IMAGE_DEBUG_MISC structure
// is left in the image file, but not mapped.  This allows a debugger to
// compute the name of the .DBG file, from the name of the image in the
// IMAGE_DEBUG_MISC structure.
//

  PIMAGE_SEPARATE_DEBUG_HEADER = ^IMAGE_SEPARATE_DEBUG_HEADER;
  {$EXTERNALSYM PIMAGE_SEPARATE_DEBUG_HEADER}
  _IMAGE_SEPARATE_DEBUG_HEADER = record
    Signature: Word;
    Flags: Word;
    Machine: Word;
    Characteristics: Word;
    TimeDateStamp: DWORD;
    CheckSum: DWORD;
    ImageBase: DWORD;
    SizeOfImage: DWORD;
    NumberOfSections: DWORD;
    ExportedNamesSize: DWORD;
    DebugDirectorySize: DWORD;
    SectionAlignment: DWORD;
    Reserved: array [0..1] of DWORD;
  end;
  {$EXTERNALSYM _IMAGE_SEPARATE_DEBUG_HEADER}
  IMAGE_SEPARATE_DEBUG_HEADER = _IMAGE_SEPARATE_DEBUG_HEADER;
  {$EXTERNALSYM IMAGE_SEPARATE_DEBUG_HEADER}
  TImageSeparateDebugHeader = IMAGE_SEPARATE_DEBUG_HEADER;
  PImageSeparateDebugHeader = PIMAGE_SEPARATE_DEBUG_HEADER;

  _NON_PAGED_DEBUG_INFO = record
    Signature: WORD;
    Flags: WORD;
    Size: DWORD;
    Machine: WORD;
    Characteristics: WORD;
    TimeDateStamp: DWORD;
    CheckSum: DWORD;
    SizeOfImage: DWORD;
    ImageBase: ULONGLONG;
    //DebugDirectorySize
    //IMAGE_DEBUG_DIRECTORY
  end;
  {$EXTERNALSYM _NON_PAGED_DEBUG_INFO}
  NON_PAGED_DEBUG_INFO = _NON_PAGED_DEBUG_INFO;
  {$EXTERNALSYM NON_PAGED_DEBUG_INFO}
  PNON_PAGED_DEBUG_INFO = ^NON_PAGED_DEBUG_INFO;
  {$EXTERNALSYM PNON_PAGED_DEBUG_INFO}

const
  IMAGE_SEPARATE_DEBUG_SIGNATURE = $4944;
  {$EXTERNALSYM IMAGE_SEPARATE_DEBUG_SIGNATURE}
  NON_PAGED_DEBUG_SIGNATURE      = $494E;
  {$EXTERNALSYM NON_PAGED_DEBUG_SIGNATURE}

  IMAGE_SEPARATE_DEBUG_FLAGS_MASK = $8000;
  {$EXTERNALSYM IMAGE_SEPARATE_DEBUG_FLAGS_MASK}
  IMAGE_SEPARATE_DEBUG_MISMATCH   = $8000; // when DBG was updated, the old checksum didn't match.
  {$EXTERNALSYM IMAGE_SEPARATE_DEBUG_MISMATCH}

//
//  The .arch section is made up of headers, each describing an amask position/value
//  pointing to an array of IMAGE_ARCHITECTURE_ENTRY's.  Each "array" (both the header
//  and entry arrays) are terminiated by a quadword of 0xffffffffL.
//
//  NOTE: There may be quadwords of 0 sprinkled around and must be skipped.
//

const
  IAHMASK_VALUE = $00000001; // 1 -> code section depends on mask bit
                             // 0 -> new instruction depends on mask bit
  IAHMASK_MBZ7  = $000000FE; // MBZ
  IAHMASK_SHIFT = $0000FF00; // Amask bit in question for this fixup
  IAHMASK_MBZ16 = DWORD($FFFF0000); // MBZ

type
  PIMAGE_ARCHITECTURE_HEADER = ^IMAGE_ARCHITECTURE_HEADER;
  {$EXTERNALSYM PIMAGE_ARCHITECTURE_HEADER}
  _ImageArchitectureHeader = record
    Mask: DWORD;
    FirstEntryRVA: DWORD;    // RVA into .arch section to array of ARCHITECTURE_ENTRY's
  end;
  {$EXTERNALSYM _ImageArchitectureHeader}
  IMAGE_ARCHITECTURE_HEADER = _ImageArchitectureHeader;
  {$EXTERNALSYM IMAGE_ARCHITECTURE_HEADER}
  TImageArchitectureHeader = IMAGE_ARCHITECTURE_HEADER;
  PImageArchitectureHeader = PIMAGE_ARCHITECTURE_HEADER;

  PIMAGE_ARCHITECTURE_ENTRY = ^IMAGE_ARCHITECTURE_ENTRY;
  {$EXTERNALSYM PIMAGE_ARCHITECTURE_ENTRY}
  _ImageArchitectureEntry = record
    FixupInstRVA: DWORD;                         // RVA of instruction to fixup
    NewInst: DWORD;                              // fixup instruction (see alphaops.h)
  end;
  {$EXTERNALSYM _ImageArchitectureEntry}
  IMAGE_ARCHITECTURE_ENTRY = _ImageArchitectureEntry;
  {$EXTERNALSYM IMAGE_ARCHITECTURE_ENTRY}
  TImageArchitectureEntry = IMAGE_ARCHITECTURE_ENTRY;
  PImageArchitectureEntry = PIMAGE_ARCHITECTURE_ENTRY;

// #include "poppack.h"                // Back to the initial value

// The following structure defines the new import object.  Note the values of the first two fields,
// which must be set as stated in order to differentiate old and new import members.
// Following this structure, the linker emits two null-terminated strings used to recreate the
// import at the time of use.  The first string is the import's name, the second is the dll's name.

const
  IMPORT_OBJECT_HDR_SIG2 = $ffff;
  {$EXTERNALSYM IMPORT_OBJECT_HDR_SIG2}

const
  IOHFLAGS_TYPE = $0003;      // IMPORT_TYPE
  IAHFLAGS_NAMETYPE = $001C;  // IMPORT_NAME_TYPE
  IAHFLAGS_RESERVED = $FFE0;  // Reserved. Must be zero.

type
  PImportObjectHeader = ^IMPORT_OBJECT_HEADER;
  IMPORT_OBJECT_HEADER = record
    Sig1: WORD;                       // Must be IMAGE_FILE_MACHINE_UNKNOWN
    Sig2: WORD;                       // Must be IMPORT_OBJECT_HDR_SIG2.
    Version: WORD;
    Machine: WORD;
    TimeDateStamp: DWORD;             // Time/date stamp
    SizeOfData: DWORD;                // particularly useful for incremental links
    OrdinalOrHint: record
    case Integer of
      0: (Ordinal: WORD);             // if grf & IMPORT_OBJECT_ORDINAL
      1: (Flags: DWORD);
    end;
    Flags: WORD;
    //WORD    Type : 2;                   // IMPORT_TYPE
    //WORD    NameType : 3;               // IMPORT_NAME_TYPE
    //WORD    Reserved : 11;              // Reserved. Must be zero.
  end;
  {$EXTERNALSYM IMPORT_OBJECT_HEADER}
  TImportObjectHeader = IMPORT_OBJECT_HEADER;

  IMPORT_OBJECT_TYPE = (IMPORT_OBJECT_CODE, IMPORT_OBJECT_DATA, IMPORT_OBJECT_CONST);
  {$EXTERNALSYM IMPORT_OBJECT_TYPE}
  TImportObjectType = IMPORT_OBJECT_TYPE;

  IMPORT_OBJECT_NAME_TYPE = (
    IMPORT_OBJECT_ORDINAL,          // Import by ordinal
    IMPORT_OBJECT_NAME,             // Import name == public symbol name.
    IMPORT_OBJECT_NAME_NO_PREFIX,   // Import name == public symbol name skipping leading ?, @, or optionally _.
    IMPORT_OBJECT_NAME_UNDECORATE); // Import name == public symbol name skipping leading ?, @, or optionally _
                                    // and truncating at first @
  {$EXTERNALSYM IMPORT_OBJECT_NAME_TYPE}
  TImportObjectNameType = IMPORT_OBJECT_NAME_TYPE;

  ReplacesCorHdrNumericDefines = DWORD;
  {$EXTERNALSYM ReplacesCorHdrNumericDefines}

const

// COM+ Header entry point flags.

  COMIMAGE_FLAGS_ILONLY               = $00000001;
  {$EXTERNALSYM COMIMAGE_FLAGS_ILONLY}
  COMIMAGE_FLAGS_32BITREQUIRED        = $00000002;
  {$EXTERNALSYM COMIMAGE_FLAGS_32BITREQUIRED}
  COMIMAGE_FLAGS_IL_LIBRARY           = $00000004;
  {$EXTERNALSYM COMIMAGE_FLAGS_IL_LIBRARY}
  COMIMAGE_FLAGS_STRONGNAMESIGNED     = $00000008;
  {$EXTERNALSYM COMIMAGE_FLAGS_STRONGNAMESIGNED}
  COMIMAGE_FLAGS_TRACKDEBUGDATA       = $00010000;
  {$EXTERNALSYM COMIMAGE_FLAGS_TRACKDEBUGDATA}

// Version flags for image.

  COR_VERSION_MAJOR_V2                = 2;
  {$EXTERNALSYM COR_VERSION_MAJOR_V2}
  COR_VERSION_MAJOR                   = COR_VERSION_MAJOR_V2;
  {$EXTERNALSYM COR_VERSION_MAJOR}
  COR_VERSION_MINOR                   = 0;
  {$EXTERNALSYM COR_VERSION_MINOR}
  COR_DELETED_NAME_LENGTH             = 8;
  {$EXTERNALSYM COR_DELETED_NAME_LENGTH}
  COR_VTABLEGAP_NAME_LENGTH           = 8;
  {$EXTERNALSYM COR_VTABLEGAP_NAME_LENGTH}

// Maximum size of a NativeType descriptor.

  NATIVE_TYPE_MAX_CB                  = 1;
  {$EXTERNALSYM NATIVE_TYPE_MAX_CB}
  COR_ILMETHOD_SECT_SMALL_MAX_DATASIZE= $FF;
  {$EXTERNALSYM COR_ILMETHOD_SECT_SMALL_MAX_DATASIZE}

// #defines for the MIH FLAGS

  IMAGE_COR_MIH_METHODRVA             = $01;
  {$EXTERNALSYM IMAGE_COR_MIH_METHODRVA}
  IMAGE_COR_MIH_EHRVA                 = $02;
  {$EXTERNALSYM IMAGE_COR_MIH_EHRVA}
  IMAGE_COR_MIH_BASICBLOCK            = $08;
  {$EXTERNALSYM IMAGE_COR_MIH_BASICBLOCK}

// V-table constants

  COR_VTABLE_32BIT                    = $01;          // V-table slots are 32-bits in size.
  {$EXTERNALSYM COR_VTABLE_32BIT}
  COR_VTABLE_64BIT                    = $02;          // V-table slots are 64-bits in size.
  {$EXTERNALSYM COR_VTABLE_64BIT}
  COR_VTABLE_FROM_UNMANAGED           = $04;          // If set, transition from unmanaged.
  {$EXTERNALSYM COR_VTABLE_FROM_UNMANAGED}
  COR_VTABLE_CALL_MOST_DERIVED        = $10;          // Call most derived method described by
  {$EXTERNALSYM COR_VTABLE_CALL_MOST_DERIVED}

// EATJ constants

  IMAGE_COR_EATJ_THUNK_SIZE           = 32;            // Size of a jump thunk reserved range.
  {$EXTERNALSYM IMAGE_COR_EATJ_THUNK_SIZE}

// Max name lengths
// Change to unlimited name lengths.

  MAX_CLASS_NAME                      = 1024;
  {$EXTERNALSYM MAX_CLASS_NAME}
  MAX_PACKAGE_NAME                    = 1024;
  {$EXTERNALSYM MAX_PACKAGE_NAME}

// COM+ 2.0 header structure.

type
  IMAGE_COR20_HEADER = record

    // Header versioning

    cb: DWORD;
    MajorRuntimeVersion: WORD;
    MinorRuntimeVersion: WORD;

    // Symbol table and startup information

    MetaData: IMAGE_DATA_DIRECTORY;
    Flags: DWORD;
    EntryPointToken: DWORD;

    // Binding information

    Resources: IMAGE_DATA_DIRECTORY;
    StrongNameSignature: IMAGE_DATA_DIRECTORY;

    // Regular fixup and binding information

    CodeManagerTable: IMAGE_DATA_DIRECTORY;
    VTableFixups: IMAGE_DATA_DIRECTORY;
    ExportAddressTableJumps: IMAGE_DATA_DIRECTORY;

    // Precompiled image info (internal use only - set to zero)

    ManagedNativeHeader: IMAGE_DATA_DIRECTORY;
  end;
  {$EXTERNALSYM IMAGE_COR20_HEADER}
  PIMAGE_COR20_HEADER = ^IMAGE_COR20_HEADER;
  {$EXTERNALSYM PIMAGE_COR20_HEADER}
  TImageCor20Header = IMAGE_COR20_HEADER;
  PImageCor20Header = PIMAGE_COR20_HEADER;

//
// End Image Format
//

type
  SLIST_ENTRY = SINGLE_LIST_ENTRY;
  {$EXTERNALSYM SLIST_ENTRY}
  _SLIST_ENTRY = _SINGLE_LIST_ENTRY;
  {$EXTERNALSYM _SLIST_ENTRY}
  PSLIST_ENTRY = PSINGLE_LIST_ENTRY;
  {$EXTERNALSYM PSLIST_ENTRY}
  TSListEntry = SLIST_ENTRY;
  PSListEntry = PSLIST_ENTRY;

type
  _SLIST_HEADER = record
  case Integer of
    0: (
      Alignment: ULONGLONG);
    1: (
      Next: SLIST_ENTRY;
      Depth: WORD;
      Sequence: WORD);
  end;
  {$EXTERNALSYM _SLIST_HEADER}
  SLIST_HEADER = _SLIST_HEADER;
  {$EXTERNALSYM SLIST_HEADER}
  PSLIST_HEADER = ^SLIST_HEADER;
  {$EXTERNALSYM PSLIST_HEADER}
  TSListHeader = SLIST_HEADER;
  PSListHeader = PSLIST_HEADER;

procedure RtlInitializeSListHead(ListHead: PSLIST_HEADER); stdcall;
function RtlFirstEntrySList(ListHead: PSLIST_HEADER): PSLIST_ENTRY; stdcall;
function RtlInterlockedPopEntrySList(ListHead: PSLIST_HEADER): PSLIST_ENTRY; stdcall;
{$EXTERNALSYM RtlInterlockedPopEntrySList}
{$IFNDEF JWA_INCLUDEMODE}
function RtlInterlockedPushEntrySList(ListHead, ListEntry: PSLIST_HEADER): PSLIST_ENTRY; stdcall;
{$EXTERNALSYM RtlInterlockedPushEntrySList}
{$ENDIF JWA_INCLUDEMODE}
function RtlInterlockedFlushSList(ListHead: PSLIST_HEADER): PSLIST_ENTRY; stdcall;
{$EXTERNALSYM RtlInterlockedFlushSList}
{$IFNDEF JWA_INCLUDEMODE}
function RtlQueryDepthSList(ListHead: PSLIST_HEADER): WORD; stdcall;
{$EXTERNALSYM RtlQueryDepthSList}
{$ENDIF JWA_INCLUDEMODE}

const
  HEAP_NO_SERIALIZE             = $00000001;
  {$EXTERNALSYM HEAP_NO_SERIALIZE}
  HEAP_GROWABLE                 = $00000002;
  {$EXTERNALSYM HEAP_GROWABLE}
  HEAP_GENERATE_EXCEPTIONS      = $00000004;
  {$EXTERNALSYM HEAP_GENERATE_EXCEPTIONS}
  HEAP_ZERO_MEMORY              = $00000008;
  {$EXTERNALSYM HEAP_ZERO_MEMORY}
  HEAP_REALLOC_IN_PLACE_ONLY    = $00000010;
  {$EXTERNALSYM HEAP_REALLOC_IN_PLACE_ONLY}
  HEAP_TAIL_CHECKING_ENABLED    = $00000020;
  {$EXTERNALSYM HEAP_TAIL_CHECKING_ENABLED}
  HEAP_FREE_CHECKING_ENABLED    = $00000040;
  {$EXTERNALSYM HEAP_FREE_CHECKING_ENABLED}
  HEAP_DISABLE_COALESCE_ON_FREE = $00000080;
  {$EXTERNALSYM HEAP_DISABLE_COALESCE_ON_FREE}
  HEAP_CREATE_ALIGN_16          = $00010000;
  {$EXTERNALSYM HEAP_CREATE_ALIGN_16}
  HEAP_CREATE_ENABLE_TRACING    = $00020000;
  {$EXTERNALSYM HEAP_CREATE_ENABLE_TRACING}
  HEAP_CREATE_ENABLE_EXECUTE    = $00040000;
  {$EXTERNALSYM HEAP_CREATE_ENABLE_EXECUTE}
  HEAP_MAXIMUM_TAG              = $0FFF;
  {$EXTERNALSYM HEAP_MAXIMUM_TAG}
  HEAP_PSEUDO_TAG_FLAG          = $8000;
  {$EXTERNALSYM HEAP_PSEUDO_TAG_FLAG}
  HEAP_TAG_SHIFT                = 18;
  {$EXTERNALSYM HEAP_TAG_SHIFT}

function HEAP_MAKE_TAG_FLAGS(b, o: DWORD): DWORD;
{$EXTERNALSYM HEAP_MAKE_TAG_FLAGS}

procedure RtlCaptureContext(ContextRecord: PCONTEXT); stdcall;
{$EXTERNALSYM RtlCaptureContext}

const
  IS_TEXT_UNICODE_ASCII16         = $0001;
  {$EXTERNALSYM IS_TEXT_UNICODE_ASCII16}
  IS_TEXT_UNICODE_REVERSE_ASCII16 = $0010;
  {$EXTERNALSYM IS_TEXT_UNICODE_REVERSE_ASCII16}

  IS_TEXT_UNICODE_STATISTICS         = $0002;
  {$EXTERNALSYM IS_TEXT_UNICODE_STATISTICS}
  IS_TEXT_UNICODE_REVERSE_STATISTICS = $0020;
  {$EXTERNALSYM IS_TEXT_UNICODE_REVERSE_STATISTICS}

  IS_TEXT_UNICODE_CONTROLS         = $0004;
  {$EXTERNALSYM IS_TEXT_UNICODE_CONTROLS}
  IS_TEXT_UNICODE_REVERSE_CONTROLS = $0040;
  {$EXTERNALSYM IS_TEXT_UNICODE_REVERSE_CONTROLS}

  IS_TEXT_UNICODE_SIGNATURE         = $0008;
  {$EXTERNALSYM IS_TEXT_UNICODE_SIGNATURE}
  IS_TEXT_UNICODE_REVERSE_SIGNATURE = $0080;
  {$EXTERNALSYM IS_TEXT_UNICODE_REVERSE_SIGNATURE}

  IS_TEXT_UNICODE_ILLEGAL_CHARS = $0100;
  {$EXTERNALSYM IS_TEXT_UNICODE_ILLEGAL_CHARS}
  IS_TEXT_UNICODE_ODD_LENGTH    = $0200;
  {$EXTERNALSYM IS_TEXT_UNICODE_ODD_LENGTH}
  IS_TEXT_UNICODE_DBCS_LEADBYTE = $0400;
  {$EXTERNALSYM IS_TEXT_UNICODE_DBCS_LEADBYTE}
  IS_TEXT_UNICODE_NULL_BYTES    = $1000;
  {$EXTERNALSYM IS_TEXT_UNICODE_NULL_BYTES}

  IS_TEXT_UNICODE_UNICODE_MASK     = $000F;
  {$EXTERNALSYM IS_TEXT_UNICODE_UNICODE_MASK}
  IS_TEXT_UNICODE_REVERSE_MASK     = $00F0;
  {$EXTERNALSYM IS_TEXT_UNICODE_REVERSE_MASK}
  IS_TEXT_UNICODE_NOT_UNICODE_MASK = $0F00;
  {$EXTERNALSYM IS_TEXT_UNICODE_NOT_UNICODE_MASK}
  IS_TEXT_UNICODE_NOT_ASCII_MASK   = $F000;
  {$EXTERNALSYM IS_TEXT_UNICODE_NOT_ASCII_MASK}

  COMPRESSION_FORMAT_NONE     = $0000;
  {$EXTERNALSYM COMPRESSION_FORMAT_NONE}
  COMPRESSION_FORMAT_DEFAULT  = $0001;
  {$EXTERNALSYM COMPRESSION_FORMAT_DEFAULT}
  COMPRESSION_FORMAT_LZNT1    = $0002;
  {$EXTERNALSYM COMPRESSION_FORMAT_LZNT1}
  COMPRESSION_ENGINE_STANDARD = $0000;
  {$EXTERNALSYM COMPRESSION_ENGINE_STANDARD}
  COMPRESSION_ENGINE_MAXIMUM  = $0100;
  {$EXTERNALSYM COMPRESSION_ENGINE_MAXIMUM}
  COMPRESSION_ENGINE_HIBER    = $0200;
  {$EXTERNALSYM COMPRESSION_ENGINE_HIBER}

function RtlCompareMemory(const Source1, Source2: Pointer; Length: SIZE_T): SIZE_T; stdcall;
{$EXTERNALSYM RtlCompareMemory}

type
  PMESSAGE_RESOURCE_ENTRY = ^MESSAGE_RESOURCE_ENTRY;
  {$EXTERNALSYM PMESSAGE_RESOURCE_ENTRY}
  _MESSAGE_RESOURCE_ENTRY = record
    Length: Word;
    Flags: Word;
    Text: array [0..0] of Byte;
  end;
  {$EXTERNALSYM _MESSAGE_RESOURCE_ENTRY}
  MESSAGE_RESOURCE_ENTRY = _MESSAGE_RESOURCE_ENTRY;
  {$EXTERNALSYM MESSAGE_RESOURCE_ENTRY}
  TMessageResourceEntry = MESSAGE_RESOURCE_ENTRY;
  PMessageResourceEntry = PMESSAGE_RESOURCE_ENTRY;

const
  MESSAGE_RESOURCE_UNICODE = $0001;
  {$EXTERNALSYM MESSAGE_RESOURCE_UNICODE}

type
  PMESSAGE_RESOURCE_BLOCK = ^MESSAGE_RESOURCE_BLOCK;
  {$EXTERNALSYM PMESSAGE_RESOURCE_BLOCK}
  _MESSAGE_RESOURCE_BLOCK = record
    LowId: DWORD;
    HighId: DWORD;
    OffsetToEntries: DWORD;
  end;
  {$EXTERNALSYM _MESSAGE_RESOURCE_BLOCK}
  MESSAGE_RESOURCE_BLOCK = _MESSAGE_RESOURCE_BLOCK;
  {$EXTERNALSYM MESSAGE_RESOURCE_BLOCK}
  TMessageResourceBlock = MESSAGE_RESOURCE_BLOCK;
  PMessageResourceBlock = PMESSAGE_RESOURCE_BLOCK;

  PMESSAGE_RESOURCE_DATA = ^MESSAGE_RESOURCE_DATA;
  {$EXTERNALSYM PMESSAGE_RESOURCE_DATA}
  _MESSAGE_RESOURCE_DATA = record
    NumberOfBlocks: DWORD;
    Blocks: array [0..0] of MESSAGE_RESOURCE_BLOCK;
  end;
  {$EXTERNALSYM _MESSAGE_RESOURCE_DATA}
  MESSAGE_RESOURCE_DATA = _MESSAGE_RESOURCE_DATA;
  {$EXTERNALSYM MESSAGE_RESOURCE_DATA}
  TMessageResourceData = MESSAGE_RESOURCE_DATA;
  PMessageResourceData = PMESSAGE_RESOURCE_DATA;

  LPOSVERSIONINFOA = ^OSVERSIONINFOA;
  {$EXTERNALSYM LPOSVERSIONINFOA}
  _OSVERSIONINFOA = record
    dwOSVersionInfoSize: DWORD;
    dwMajorVersion: DWORD;
    dwMinorVersion: DWORD;
    dwBuildNumber: DWORD;
    dwPlatformId: DWORD;
    szCSDVersion: array [0..127] of AnsiChar; // Maintenance string for PSS usage
  end;
  {$EXTERNALSYM _OSVERSIONINFOA}
  OSVERSIONINFOA = _OSVERSIONINFOA;
  {$EXTERNALSYM OSVERSIONINFOA}
  TOsVersionInfoA = OSVERSIONINFOA;
  POsVersionInfoA = LPOSVERSIONINFOA;

  LPOSVERSIONINFOW = ^OSVERSIONINFOW;
  {$EXTERNALSYM LPOSVERSIONINFOW}
  _OSVERSIONINFOW = record
    dwOSVersionInfoSize: DWORD;
    dwMajorVersion: DWORD;
    dwMinorVersion: DWORD;
    dwBuildNumber: DWORD;
    dwPlatformId: DWORD;
    szCSDVersion: array [0..127] of WCHAR; // Maintenance string for PSS usage
  end;
  {$EXTERNALSYM _OSVERSIONINFOW}
  OSVERSIONINFOW = _OSVERSIONINFOW;
  {$EXTERNALSYM OSVERSIONINFOW}
  TOsVersionInfoW = OSVERSIONINFOW;
  POsVersionInfoW = LPOSVERSIONINFOW;

  {$IFDEF UNICODE}
  OSVERSIONINFO = OSVERSIONINFOW;
  {$EXTERNALSYM OSVERSIONINFO}
  POSVERSIONINFO = POSVERSIONINFOW;
  {$EXTERNALSYM POSVERSIONINFO}
  LPOSVERSIONINFO = LPOSVERSIONINFOW;
  {$EXTERNALSYM LPOSVERSIONINFO}
  TOSVersionInfo = TOSVersionInfoW;
  {$ELSE}
  OSVERSIONINFO = OSVERSIONINFOA;
  {$EXTERNALSYM OSVERSIONINFO}
  POSVERSIONINFO = POSVERSIONINFOA;
  {$EXTERNALSYM POSVERSIONINFO}
  LPOSVERSIONINFO = LPOSVERSIONINFOA;
  {$EXTERNALSYM LPOSVERSIONINFO}
  TOSVersionInfo = TOSVersionInfoA;
  {$ENDIF UNICODE}

type
  POSVERSIONINFOEXA = ^OSVERSIONINFOEXA;
  {$EXTERNALSYM POSVERSIONINFOEXA}
  _OSVERSIONINFOEXA = record
    dwOSVersionInfoSize: DWORD;
    dwMajorVersion: DWORD;
    dwMinorVersion: DWORD;
    dwBuildNumber: DWORD;
    dwPlatformId: DWORD;
    szCSDVersion: array [0..127] of AnsiChar;     // Maintenance string for PSS usage
    wServicePackMajor: WORD;
    wServicePackMinor: WORD;
    wSuiteMask: WORD;
    wProductType: BYTE;
    wReserved: BYTE;
  end;
  {$EXTERNALSYM _OSVERSIONINFOEXA}
  OSVERSIONINFOEXA = _OSVERSIONINFOEXA;
  {$EXTERNALSYM OSVERSIONINFOEXA}
  LPOSVERSIONINFOEXA = ^OSVERSIONINFOEXA;
  {$EXTERNALSYM LPOSVERSIONINFOEXA}
  TOSVersionInfoExA = _OSVERSIONINFOEXA;

  POSVERSIONINFOEXW = ^OSVERSIONINFOEXW;
  {$EXTERNALSYM POSVERSIONINFOEXW}
  _OSVERSIONINFOEXW = record
    dwOSVersionInfoSize: DWORD;
    dwMajorVersion: DWORD;
    dwMinorVersion: DWORD;
    dwBuildNumber: DWORD;
    dwPlatformId: DWORD;
    szCSDVersion: array [0..127] of WCHAR;     // Maintenance string for PSS usage
    wServicePackMajor: WORD;
    wServicePackMinor: WORD;
    wSuiteMask: WORD;
    wProductType: BYTE;
    wReserved: BYTE;
  end;
  {$EXTERNALSYM _OSVERSIONINFOEXW}
  OSVERSIONINFOEXW = _OSVERSIONINFOEXW;
  {$EXTERNALSYM OSVERSIONINFOEXW}
  LPOSVERSIONINFOEXW = ^OSVERSIONINFOEXW;
  {$EXTERNALSYM LPOSVERSIONINFOEXW}
  RTL_OSVERSIONINFOEXW = _OSVERSIONINFOEXW;
  {$EXTERNALSYM RTL_OSVERSIONINFOEXW}
  PRTL_OSVERSIONINFOEXW = ^RTL_OSVERSIONINFOEXW;
  {$EXTERNALSYM PRTL_OSVERSIONINFOEXW}
  TOSVersionInfoExW = _OSVERSIONINFOEXW;

  {$IFDEF UNICODE}
  OSVERSIONINFOEX = OSVERSIONINFOEXW;
  {$EXTERNALSYM OSVERSIONINFOEX}
  POSVERSIONINFOEX = POSVERSIONINFOEXW;
  {$EXTERNALSYM POSVERSIONINFOEX}
  LPOSVERSIONINFOEX = LPOSVERSIONINFOEXW;
  {$EXTERNALSYM LPOSVERSIONINFOEX}
  TOSVersionInfoEx = TOSVersionInfoExW;
  {$ELSE}
  OSVERSIONINFOEX = OSVERSIONINFOEXA;
  {$EXTERNALSYM OSVERSIONINFOEX}
  POSVERSIONINFOEX = POSVERSIONINFOEXA;
  {$EXTERNALSYM POSVERSIONINFOEX}
  LPOSVERSIONINFOEX = LPOSVERSIONINFOEXA;
  {$EXTERNALSYM LPOSVERSIONINFOEX}
  TOSVersionInfoEx = TOSVersionInfoExA;
  {$ENDIF UNICODE}

//
// RtlVerifyVersionInfo() conditions
//

const
  VER_EQUAL         = 1;
  {$EXTERNALSYM VER_EQUAL}
  VER_GREATER       = 2;
  {$EXTERNALSYM VER_GREATER}
  VER_GREATER_EQUAL = 3;
  {$EXTERNALSYM VER_GREATER_EQUAL}
  VER_LESS          = 4;
  {$EXTERNALSYM VER_LESS}
  VER_LESS_EQUAL    = 5;
  {$EXTERNALSYM VER_LESS_EQUAL}
  VER_AND           = 6;
  {$EXTERNALSYM VER_AND}
  VER_OR            = 7;
  {$EXTERNALSYM VER_OR}

  VER_CONDITION_MASK              = 7;
  {$EXTERNALSYM VER_CONDITION_MASK}
  VER_NUM_BITS_PER_CONDITION_MASK = 3;
  {$EXTERNALSYM VER_NUM_BITS_PER_CONDITION_MASK}

//
// RtlVerifyVersionInfo() type mask bits
//

  VER_MINORVERSION     = $0000001;
  {$EXTERNALSYM VER_MINORVERSION}
  VER_MAJORVERSION     = $0000002;
  {$EXTERNALSYM VER_MAJORVERSION}
  VER_BUILDNUMBER      = $0000004;
  {$EXTERNALSYM VER_BUILDNUMBER}
  VER_PLATFORMID       = $0000008;
  {$EXTERNALSYM VER_PLATFORMID}
  VER_SERVICEPACKMINOR = $0000010;
  {$EXTERNALSYM VER_SERVICEPACKMINOR}
  VER_SERVICEPACKMAJOR = $0000020;
  {$EXTERNALSYM VER_SERVICEPACKMAJOR}
  VER_SUITENAME        = $0000040;
  {$EXTERNALSYM VER_SUITENAME}
  VER_PRODUCT_TYPE     = $0000080;
  {$EXTERNALSYM VER_PRODUCT_TYPE}

//
// RtlVerifyVersionInfo() os product type values
//

  VER_NT_WORKSTATION       = $0000001;
  {$EXTERNALSYM VER_NT_WORKSTATION}
  VER_NT_DOMAIN_CONTROLLER = $0000002;
  {$EXTERNALSYM VER_NT_DOMAIN_CONTROLLER}
  VER_NT_SERVER            = $0000003;
  {$EXTERNALSYM VER_NT_SERVER}

//
// dwPlatformId defines:
//

  VER_PLATFORM_WIN32s        = 0;
  {$EXTERNALSYM VER_PLATFORM_WIN32s}
  VER_PLATFORM_WIN32_WINDOWS = 1;
  {$EXTERNALSYM VER_PLATFORM_WIN32_WINDOWS}
  VER_PLATFORM_WIN32_NT      = 2;
  {$EXTERNALSYM VER_PLATFORM_WIN32_NT}

//
//
// VerifyVersionInfo() macro to set the condition mask
//
// For documentation sakes here's the old version of the macro that got
// changed to call an API
// #define VER_SET_CONDITION(_m_,_t_,_c_)  _m_=(_m_|(_c_<<(1<<_t_)))
//

procedure VER_SET_CONDITION(var Mask: DWORDLONG; TypeBitmask, ConditionMask: ULONG);
{$EXTERNALSYM VER_SET_CONDITION}

function VerSetConditionMask(ConditionMask: ULONGLONG; TypeMask: DWORD;
  Condition: BYTE): ULONGLONG; stdcall;
{$EXTERNALSYM VerSetConditionMask}

type
  PRTL_CRITICAL_SECTION_DEBUG = ^RTL_CRITICAL_SECTION_DEBUG;
  {$EXTERNALSYM PRTL_CRITICAL_SECTION_DEBUG}
  _RTL_CRITICAL_SECTION_DEBUG = record
    _Type: WORD;
    CreatorBackTraceIndex: WORD;
    CriticalSection: PRTL_CRITICAL_SECTION_DEBUG;
    ProcessLocksList: LIST_ENTRY;
    EntryCount: DWORD;
    ContentionCount: DWORD;
    Spare: array [0..1] of DWORD;
  end;
  {$EXTERNALSYM _RTL_CRITICAL_SECTION_DEBUG}
  RTL_CRITICAL_SECTION_DEBUG = _RTL_CRITICAL_SECTION_DEBUG;
  {$EXTERNALSYM RTL_CRITICAL_SECTION_DEBUG}
  TRtlCriticalSectionDebug = RTL_CRITICAL_SECTION_DEBUG;
  PRtlCriticalSectionDebug = PRTL_CRITICAL_SECTION_DEBUG;
  RTL_RESOURCE_DEBUG = _RTL_CRITICAL_SECTION_DEBUG;
  {$EXTERNALSYM RTL_RESOURCE_DEBUG}
  PRTL_RESOURCE_DEBUG = RTL_RESOURCE_DEBUG;
  {$EXTERNALSYM PRTL_RESOURCE_DEBUG}
  TRtlResourceDebug = RTL_CRITICAL_SECTION_DEBUG;
  PRtlResourceDebug = PRTL_CRITICAL_SECTION_DEBUG;

const
  RTL_CRITSECT_TYPE = 0;
  {$EXTERNALSYM RTL_CRITSECT_TYPE}
  RTL_RESOURCE_TYPE = 1;
  {$EXTERNALSYM RTL_RESOURCE_TYPE}

type
  PRTL_CRITICAL_SECTION = ^RTL_CRITICAL_SECTION;
  {$EXTERNALSYM PRTL_CRITICAL_SECTION}
  _RTL_CRITICAL_SECTION = record
    DebugInfo: PRTL_CRITICAL_SECTION_DEBUG;

    //
    //  The following three fields control entering and exiting the critical
    //  section for the resource
    //

    LockCount: LONG;
    RecursionCount: LONG;
    OwningThread: HANDLE;        // from the thread's ClientId->UniqueThread
    LockSemaphore: HANDLE;
    SpinCount: ULONG_PTR;        // force size on 64-bit systems when packed
  end;
  {$EXTERNALSYM _RTL_CRITICAL_SECTION}
  RTL_CRITICAL_SECTION = _RTL_CRITICAL_SECTION;
  {$EXTERNALSYM RTL_CRITICAL_SECTION}
  TRtlCriticalSection = RTL_CRITICAL_SECTION;
  PRtlCriticalSection = PRTL_CRITICAL_SECTION;

  PRTL_SRWLOCK = ^RTL_SRWLOCK;
  {$EXTERNALSYM PRTL_SRWLOCK}
  _RTL_SRWLOCK = record
    Ptr : Pointer;
  end;
  {$EXTERNALSYM _RTL_SRWLOCK}
  RTL_SRWLOCK = _RTL_SRWLOCK;
  {$EXTERNALSYM RTL_SRWLOCK}
  TRtlSrwLock = RTL_SRWLOCK;
  PRtlSrwLock = PRTL_SRWLOCK;
const
  RTL_SRWLOCK_INIT : RTL_SRWLOCK = (Ptr : 0);
  {$EXTERNALSYM RTL_SRWLOCK_INIT}

type
  PRTL_CONDITION_VARIABLE = ^RTL_CONDITION_VARIABLE;
  {$EXTERNALSYM PRTL_CONDITION_VARIABLE}
  _RTL_CONDITION_VARIABLE = record
    Ptr : Pointer;
  end;
  {$EXTERNALSYM _RTL_CONDITION_VARIABLE}
  RTL_CONDITION_VARIABLE = _RTL_CONDITION_VARIABLE;
  {$EXTERNALSYM RTL_CONDITION_VARIABLE}
  TRtlConditionVariable = RTL_CONDITION_VARIABLE;
  PRtlConditionVariable = PRTL_CONDITION_VARIABLE;
const
  RTL_CONDITION_VARIABLE_INIT : RTL_CONDITION_VARIABLE = (Ptr : 0);
  {$EXTERNALSYM RTL_CONDITION_VARIABLE_INIT}
  RTL_CONDITION_VARIABLE_LOCKMODE_SHARED = $1;
  {$EXTERNALSYM RTL_CONDITION_VARIABLE_LOCKMODE_SHARED}

type
  RTL_VERIFIER_DLL_LOAD_CALLBACK = procedure(DllName: PWSTR; DllBase: PVOID; DllSize: SIZE_T;
    Reserved: PVOID); stdcall;
  {$EXTERNALSYM RTL_VERIFIER_DLL_LOAD_CALLBACK}

  RTL_VERIFIER_DLL_UNLOAD_CALLBACK = procedure(DllName: PWSTR; DllBase: PVOID; DllSize: SIZE_T;
    Reserved: PVOID); stdcall;
  {$EXTERNALSYM RTL_VERIFIER_DLL_UNLOAD_CALLBACK}

  RTL_VERIFIER_NTDLLHEAPFREE_CALLBACK = procedure(AllocationBase: PVOID; AllocationSize: SIZE_T); stdcall;
  {$EXTERNALSYM RTL_VERIFIER_NTDLLHEAPFREE_CALLBACK}

  PRTL_VERIFIER_THUNK_DESCRIPTOR = ^RTL_VERIFIER_THUNK_DESCRIPTOR;
  {$EXTERNALSYM PRTL_VERIFIER_THUNK_DESCRIPTOR}
  _RTL_VERIFIER_THUNK_DESCRIPTOR = record
    ThunkName: PAnsiChar;
    ThunkOldAddress: PVOID;
    ThunkNewAddress: PVOID;
  end;
  {$EXTERNALSYM _RTL_VERIFIER_THUNK_DESCRIPTOR}
  RTL_VERIFIER_THUNK_DESCRIPTOR = _RTL_VERIFIER_THUNK_DESCRIPTOR;
  {$EXTERNALSYM RTL_VERIFIER_THUNK_DESCRIPTOR}
  TRtlVerifierThunkDescriptor = RTL_VERIFIER_THUNK_DESCRIPTOR;
  PRtlVerifierThunkDescriptor = PRTL_VERIFIER_THUNK_DESCRIPTOR;

  PRTL_VERIFIER_DLL_DESCRIPTOR = ^RTL_VERIFIER_DLL_DESCRIPTOR;
  {$EXTERNALSYM PRTL_VERIFIER_DLL_DESCRIPTOR}
  _RTL_VERIFIER_DLL_DESCRIPTOR = record
    DllName: PWCHAR;
    DllFlags: DWORD;
    DllAddress: PVOID;
    DllThunks: PRTL_VERIFIER_THUNK_DESCRIPTOR;
  end;
  {$EXTERNALSYM _RTL_VERIFIER_DLL_DESCRIPTOR}
  RTL_VERIFIER_DLL_DESCRIPTOR = _RTL_VERIFIER_DLL_DESCRIPTOR;
  {$EXTERNALSYM RTL_VERIFIER_DLL_DESCRIPTOR}
  TRtlVerifierDllDescriptor = RTL_VERIFIER_DLL_DESCRIPTOR;
  PRtlVerifierDllDescriptor = PRTL_VERIFIER_DLL_DESCRIPTOR;

  PRTL_VERIFIER_PROVIDER_DESCRIPTOR = ^RTL_VERIFIER_PROVIDER_DESCRIPTOR;
  {$EXTERNALSYM PRTL_VERIFIER_PROVIDER_DESCRIPTOR}
  _RTL_VERIFIER_PROVIDER_DESCRIPTOR = record
    //
    // Filled by verifier provider DLL
    //
    Length: DWORD;
    ProviderDlls: PRTL_VERIFIER_DLL_DESCRIPTOR;
    ProviderDllLoadCallback: RTL_VERIFIER_DLL_LOAD_CALLBACK;
    ProviderDllUnloadCallback: RTL_VERIFIER_DLL_UNLOAD_CALLBACK;
    //
    // Filled by verifier engine
    //
    VerifierImage: PWSTR;
    VerifierFlags: DWORD;
    VerifierDebug: DWORD;

    RtlpGetStackTraceAddress: PVOID;
    RtlpDebugPageHeapCreate: PVOID;
    RtlpDebugPageHeapDestroy: PVOID;

    //
    // Filled by verifier provider DLL
    //

    ProviderNtdllHeapFreeCallback: RTL_VERIFIER_NTDLLHEAPFREE_CALLBACK;
  end;
  {$EXTERNALSYM _RTL_VERIFIER_PROVIDER_DESCRIPTOR}
  RTL_VERIFIER_PROVIDER_DESCRIPTOR = _RTL_VERIFIER_PROVIDER_DESCRIPTOR;
  {$EXTERNALSYM RTL_VERIFIER_PROVIDER_DESCRIPTOR}
  TRtlVerifierProviderDescriptor = RTL_VERIFIER_PROVIDER_DESCRIPTOR;
  PRtlVerifierProviderDescriptor = PRTL_VERIFIER_PROVIDER_DESCRIPTOR;

//
// Application verifier standard flags
//

const
  RTL_VRF_FLG_FULL_PAGE_HEAP                 = $00000001;
  {$EXTERNALSYM RTL_VRF_FLG_FULL_PAGE_HEAP}
  RTL_VRF_FLG_RESERVED_DONOTUSE              = $00000002; // old RTL_VRF_FLG_LOCK_CHECKS
  {$EXTERNALSYM RTL_VRF_FLG_RESERVED_DONOTUSE}
  RTL_VRF_FLG_HANDLE_CHECKS                  = $00000004;
  {$EXTERNALSYM RTL_VRF_FLG_HANDLE_CHECKS}
  RTL_VRF_FLG_STACK_CHECKS                   = $00000008;
  {$EXTERNALSYM RTL_VRF_FLG_STACK_CHECKS}
  RTL_VRF_FLG_APPCOMPAT_CHECKS               = $00000010;
  {$EXTERNALSYM RTL_VRF_FLG_APPCOMPAT_CHECKS}
  RTL_VRF_FLG_TLS_CHECKS                     = $00000020;
  {$EXTERNALSYM RTL_VRF_FLG_TLS_CHECKS}
  RTL_VRF_FLG_DIRTY_STACKS                   = $00000040;
  {$EXTERNALSYM RTL_VRF_FLG_DIRTY_STACKS}
  RTL_VRF_FLG_RPC_CHECKS                     = $00000080;
  {$EXTERNALSYM RTL_VRF_FLG_RPC_CHECKS}
  RTL_VRF_FLG_COM_CHECKS                     = $00000100;
  {$EXTERNALSYM RTL_VRF_FLG_COM_CHECKS}
  RTL_VRF_FLG_DANGEROUS_APIS                 = $00000200;
  {$EXTERNALSYM RTL_VRF_FLG_DANGEROUS_APIS}
  RTL_VRF_FLG_RACE_CHECKS                    = $00000400;
  {$EXTERNALSYM RTL_VRF_FLG_RACE_CHECKS}
  RTL_VRF_FLG_DEADLOCK_CHECKS                = $00000800;
  {$EXTERNALSYM RTL_VRF_FLG_DEADLOCK_CHECKS}
  RTL_VRF_FLG_FIRST_CHANCE_EXCEPTION_CHECKS  = $00001000;
  {$EXTERNALSYM RTL_VRF_FLG_FIRST_CHANCE_EXCEPTION_CHECKS}
  RTL_VRF_FLG_VIRTUAL_MEM_CHECKS             = $00002000;
  {$EXTERNALSYM RTL_VRF_FLG_VIRTUAL_MEM_CHECKS}
  RTL_VRF_FLG_ENABLE_LOGGING                 = $00004000;
  {$EXTERNALSYM RTL_VRF_FLG_ENABLE_LOGGING}
  RTL_VRF_FLG_FAST_FILL_HEAP                 = $00008000;
  {$EXTERNALSYM RTL_VRF_FLG_FAST_FILL_HEAP}
  RTL_VRF_FLG_VIRTUAL_SPACE_TRACKING         = $00010000;
  {$EXTERNALSYM RTL_VRF_FLG_VIRTUAL_SPACE_TRACKING}
  RTL_VRF_FLG_ENABLED_SYSTEM_WIDE            = $00020000;
  {$EXTERNALSYM RTL_VRF_FLG_ENABLED_SYSTEM_WIDE}
  RTL_VRF_FLG_MISCELLANEOUS_CHECKS           = $00020000;
  {$EXTERNALSYM RTL_VRF_FLG_MISCELLANEOUS_CHECKS}
  RTL_VRF_FLG_LOCK_CHECKS                    = $00040000;
  {$EXTERNALSYM RTL_VRF_FLG_LOCK_CHECKS}

//
// Application verifier standard stop codes
//

  APPLICATION_VERIFIER_INTERNAL_ERROR    = DWORD($80000000);
  {$EXTERNALSYM APPLICATION_VERIFIER_INTERNAL_ERROR}
  APPLICATION_VERIFIER_INTERNAL_WARNING  = $40000000;
  {$EXTERNALSYM APPLICATION_VERIFIER_INTERNAL_WARNING}
  APPLICATION_VERIFIER_NO_BREAK          = $20000000;
  {$EXTERNALSYM APPLICATION_VERIFIER_NO_BREAK}
  APPLICATION_VERIFIER_CONTINUABLE_BREAK = $10000000;
  {$EXTERNALSYM APPLICATION_VERIFIER_CONTINUABLE_BREAK}

  APPLICATION_VERIFIER_UNKNOWN_ERROR         = $0001;
  {$EXTERNALSYM APPLICATION_VERIFIER_UNKNOWN_ERROR}
  APPLICATION_VERIFIER_ACCESS_VIOLATION      = $0002;
  {$EXTERNALSYM APPLICATION_VERIFIER_ACCESS_VIOLATION}
  APPLICATION_VERIFIER_UNSYNCHRONIZED_ACCESS = $0003;
  {$EXTERNALSYM APPLICATION_VERIFIER_UNSYNCHRONIZED_ACCESS}
  APPLICATION_VERIFIER_EXTREME_SIZE_REQUEST  = $0004;
  {$EXTERNALSYM APPLICATION_VERIFIER_EXTREME_SIZE_REQUEST}
  APPLICATION_VERIFIER_BAD_HEAP_HANDLE       = $0005;
  {$EXTERNALSYM APPLICATION_VERIFIER_BAD_HEAP_HANDLE}
  APPLICATION_VERIFIER_SWITCHED_HEAP_HANDLE  = $0006;
  {$EXTERNALSYM APPLICATION_VERIFIER_SWITCHED_HEAP_HANDLE}
  APPLICATION_VERIFIER_DOUBLE_FREE           = $0007;
  {$EXTERNALSYM APPLICATION_VERIFIER_DOUBLE_FREE}
  APPLICATION_VERIFIER_CORRUPTED_HEAP_BLOCK  = $0008;
  {$EXTERNALSYM APPLICATION_VERIFIER_CORRUPTED_HEAP_BLOCK}
  APPLICATION_VERIFIER_DESTROY_PROCESS_HEAP  = $0009;
  {$EXTERNALSYM APPLICATION_VERIFIER_DESTROY_PROCESS_HEAP}
  APPLICATION_VERIFIER_UNEXPECTED_EXCEPTION  = $000A;
  {$EXTERNALSYM APPLICATION_VERIFIER_UNEXPECTED_EXCEPTION}
  APPLICATION_VERIFIER_STACK_OVERFLOW        = $000B;
  {$EXTERNALSYM APPLICATION_VERIFIER_STACK_OVERFLOW}

  APPLICATION_VERIFIER_TERMINATE_THREAD_CALL = $0100;
  {$EXTERNALSYM APPLICATION_VERIFIER_TERMINATE_THREAD_CALL}
  APPLICATION_VERIFIER_INVALID_EXIT_PROCESS_CALL = $0101;
  {$EXTERNALSYM APPLICATION_VERIFIER_INVALID_EXIT_PROCESS_CALL}

  APPLICATION_VERIFIER_EXIT_THREAD_OWNS_LOCK        = $0200;
  {$EXTERNALSYM APPLICATION_VERIFIER_EXIT_THREAD_OWNS_LOCK}
  APPLICATION_VERIFIER_LOCK_IN_UNLOADED_DLL         = $0201;
  {$EXTERNALSYM APPLICATION_VERIFIER_LOCK_IN_UNLOADED_DLL}
  APPLICATION_VERIFIER_LOCK_IN_FREED_HEAP           = $0202;
  {$EXTERNALSYM APPLICATION_VERIFIER_LOCK_IN_FREED_HEAP}
  APPLICATION_VERIFIER_LOCK_DOUBLE_INITIALIZE       = $0203;
  {$EXTERNALSYM APPLICATION_VERIFIER_LOCK_DOUBLE_INITIALIZE}
  APPLICATION_VERIFIER_LOCK_IN_FREED_MEMORY         = $0204;
  {$EXTERNALSYM APPLICATION_VERIFIER_LOCK_IN_FREED_MEMORY}
  APPLICATION_VERIFIER_LOCK_CORRUPTED               = $0205;
  {$EXTERNALSYM APPLICATION_VERIFIER_LOCK_CORRUPTED}
  APPLICATION_VERIFIER_LOCK_INVALID_OWNER           = $0206;
  {$EXTERNALSYM APPLICATION_VERIFIER_LOCK_INVALID_OWNER}
  APPLICATION_VERIFIER_LOCK_INVALID_RECURSION_COUNT = $0207;
  {$EXTERNALSYM APPLICATION_VERIFIER_LOCK_INVALID_RECURSION_COUNT}
  APPLICATION_VERIFIER_LOCK_INVALID_LOCK_COUNT      = $0208;
  {$EXTERNALSYM APPLICATION_VERIFIER_LOCK_INVALID_LOCK_COUNT}
  APPLICATION_VERIFIER_LOCK_OVER_RELEASED           = $0209;
  {$EXTERNALSYM APPLICATION_VERIFIER_LOCK_OVER_RELEASED}
  APPLICATION_VERIFIER_LOCK_NOT_INITIALIZED         = $0210;
  {$EXTERNALSYM APPLICATION_VERIFIER_LOCK_NOT_INITIALIZED}
  APPLICATION_VERIFIER_LOCK_ALREADY_INITIALIZED     = $0211;
  {$EXTERNALSYM APPLICATION_VERIFIER_LOCK_ALREADY_INITIALIZED}

  APPLICATION_VERIFIER_INVALID_HANDLE      = $0300;
  {$EXTERNALSYM APPLICATION_VERIFIER_INVALID_HANDLE}
  APPLICATION_VERIFIER_INVALID_TLS_VALUE   = $0301;
  {$EXTERNALSYM APPLICATION_VERIFIER_INVALID_TLS_VALUE}
  APPLICATION_VERIFIER_INCORRECT_WAIT_CALL = $0302;
  {$EXTERNALSYM APPLICATION_VERIFIER_INCORRECT_WAIT_CALL}
  APPLICATION_VERIFIER_NULL_HANDLE         = $0303;
  {$EXTERNALSYM APPLICATION_VERIFIER_NULL_HANDLE}
  APPLICATION_VERIFIER_WAIT_IN_DLLMAIN     = $0304;
  {$EXTERNALSYM APPLICATION_VERIFIER_WAIT_IN_DLLMAIN}

  APPLICATION_VERIFIER_COM_ERROR                   = $0400;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_ERROR}
  APPLICATION_VERIFIER_COM_API_IN_DLLMAIN          = $0401;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_API_IN_DLLMAIN}
  APPLICATION_VERIFIER_COM_UNHANDLED_EXCEPTION     = $0402;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_UNHANDLED_EXCEPTION}
  APPLICATION_VERIFIER_COM_UNBALANCED_COINIT       = $0403;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_UNBALANCED_COINIT}
  APPLICATION_VERIFIER_COM_UNBALANCED_OLEINIT      = $0404;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_UNBALANCED_OLEINIT}
  APPLICATION_VERIFIER_COM_UNBALANCED_SWC          = $0405;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_UNBALANCED_SWC}
  APPLICATION_VERIFIER_COM_NULL_DACL               = $0406;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_NULL_DACL}
  APPLICATION_VERIFIER_COM_UNSAFE_IMPERSONATION    = $0407;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_UNSAFE_IMPERSONATION}
  APPLICATION_VERIFIER_COM_SMUGGLED_WRAPPER        = $0408;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_SMUGGLED_WRAPPER}
  APPLICATION_VERIFIER_COM_SMUGGLED_PROXY          = $0409;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_SMUGGLED_PROXY}
  APPLICATION_VERIFIER_COM_CF_SUCCESS_WITH_NULL    = $040A;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_CF_SUCCESS_WITH_NULL}
  APPLICATION_VERIFIER_COM_GCO_SUCCESS_WITH_NULL   = $040B;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_GCO_SUCCESS_WITH_NULL}
  APPLICATION_VERIFIER_COM_OBJECT_IN_FREED_MEMORY  = $040C;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_OBJECT_IN_FREED_MEMORY}
  APPLICATION_VERIFIER_COM_OBJECT_IN_UNLOADED_DLL  = $040D;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_OBJECT_IN_UNLOADED_DLL}
  APPLICATION_VERIFIER_COM_VTBL_IN_FREED_MEMORY    = $040E;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_VTBL_IN_FREED_MEMORY}
  APPLICATION_VERIFIER_COM_VTBL_IN_UNLOADED_DLL    = $040F;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_VTBL_IN_UNLOADED_DLL}
  APPLICATION_VERIFIER_COM_HOLDING_LOCKS_ON_CALL   = $0410;
  {$EXTERNALSYM APPLICATION_VERIFIER_COM_HOLDING_LOCKS_ON_CALL}

  APPLICATION_VERIFIER_RPC_ERROR                  = $0500;
  {$EXTERNALSYM APPLICATION_VERIFIER_RPC_ERROR}

  APPLICATION_VERIFIER_INVALID_FREEMEM            = $0600;
  {$EXTERNALSYM APPLICATION_VERIFIER_INVALID_FREEMEM}
  APPLICATION_VERIFIER_INVALID_ALLOCMEM           = $0601;
  {$EXTERNALSYM APPLICATION_VERIFIER_INVALID_ALLOCMEM}
  APPLICATION_VERIFIER_INVALID_MAPVIEW            = $0602;
  {$EXTERNALSYM APPLICATION_VERIFIER_INVALID_MAPVIEW}
  APPLICATION_VERIFIER_PROBE_INVALID_ADDRESS        = $0603;
  {$EXTERNALSYM APPLICATION_VERIFIER_PROBE_INVALID_ADDRESS}
  APPLICATION_VERIFIER_PROBE_FREE_MEM               = $0604;
  {$EXTERNALSYM APPLICATION_VERIFIER_PROBE_FREE_MEM}
  APPLICATION_VERIFIER_PROBE_GUARD_PAGE             = $0605;
  {$EXTERNALSYM APPLICATION_VERIFIER_PROBE_GUARD_PAGE}
  APPLICATION_VERIFIER_PROBE_NULL                   = $0606;
  {$EXTERNALSYM APPLICATION_VERIFIER_PROBE_NULL}
  APPLICATION_VERIFIER_PROBE_INVALID_START_OR_SIZE  = $0607;
  {$EXTERNALSYM APPLICATION_VERIFIER_PROBE_INVALID_START_OR_SIZE}

(* TODO
#define VERIFIER_STOP(Code, Msg, P1, S1, P2, S2, P3, S3, P4, S4) {  \
        RtlApplicationVerifierStop ((Code),                         \
                                    (Msg),                          \
                                    (ULONG_PTR)(P1),(S1),           \
                                    (ULONG_PTR)(P2),(S2),           \
                                    (ULONG_PTR)(P3),(S3),           \
                                    (ULONG_PTR)(P4),(S4));          \
  }

VOID NTAPI
RtlApplicationVerifierStop (
    ULONG_PTR Code,
    PAnsiChar Message,
    ULONG_PTR Param1, PAnsiChar Description1,
    ULONG_PTR Param2, PAnsiChar Description2,
    ULONG_PTR Param3, PAnsiChar Description3,
    ULONG_PTR Param4, PAnsiChar Description4
    );
*)

type
  PVECTORED_EXCEPTION_HANDLER = function(ExceptionInfo: PEXCEPTION_POINTERS): LONG; stdcall;
  {$EXTERNALSYM PVECTORED_EXCEPTION_HANDLER}
  PVectoredExceptionHandler = PVECTORED_EXCEPTION_HANDLER;

const
  SEF_DACL_AUTO_INHERIT             = $01;
  {$EXTERNALSYM SEF_DACL_AUTO_INHERIT}
  SEF_SACL_AUTO_INHERIT             = $02;
  {$EXTERNALSYM SEF_SACL_AUTO_INHERIT}
  SEF_DEFAULT_DESCRIPTOR_FOR_OBJECT = $04;
  {$EXTERNALSYM SEF_DEFAULT_DESCRIPTOR_FOR_OBJECT}
  SEF_AVOID_PRIVILEGE_CHECK         = $08;
  {$EXTERNALSYM SEF_AVOID_PRIVILEGE_CHECK}
  SEF_AVOID_OWNER_CHECK             = $10;
  {$EXTERNALSYM SEF_AVOID_OWNER_CHECK}
  SEF_DEFAULT_OWNER_FROM_PARENT     = $20;
  {$EXTERNALSYM SEF_DEFAULT_OWNER_FROM_PARENT}
  SEF_DEFAULT_GROUP_FROM_PARENT     = $40;
  {$EXTERNALSYM SEF_DEFAULT_GROUP_FROM_PARENT}

type
  _HEAP_INFORMATION_CLASS = (HeapCompatibilityInformation);
  {$EXTERNALSYM _HEAP_INFORMATION_CLASS}
  HEAP_INFORMATION_CLASS = _HEAP_INFORMATION_CLASS;
  {$EXTERNALSYM HEAP_INFORMATION_CLASS}
  THeapInformationClass = HEAP_INFORMATION_CLASS;

{ TODO
DWORD NTAPI
RtlSetHeapInformation (
    IN PVOID HeapHandle,
    IN HEAP_INFORMATION_CLASS HeapInformationClass,
    IN PVOID HeapInformation OPTIONAL,
    IN SIZE_T HeapInformationLength OPTIONAL
    );

DWORD NTAPI
RtlQueryHeapInformation (
    IN PVOID HeapHandle,
    IN HEAP_INFORMATION_CLASS HeapInformationClass,
    OUT PVOID HeapInformation OPTIONAL,
    IN SIZE_T HeapInformationLength OPTIONAL,
    OUT PSIZE_T ReturnLength OPTIONAL
    );

//
//  Multiple alloc-free APIS
//

DWORD
NTAPI
RtlMultipleAllocateHeap (
    IN PVOID HeapHandle,
    IN DWORD Flags,
    IN SIZE_T Size,
    IN DWORD Count,
    OUT PVOID * Array
    );

DWORD
NTAPI
RtlMultipleFreeHeap (
    IN PVOID HeapHandle,
    IN DWORD Flags,
    IN DWORD Count,
    OUT PVOID * Array
    );
}

const
  WT_EXECUTEDEFAULT                 = $00000000;
  {$EXTERNALSYM WT_EXECUTEDEFAULT}
  WT_EXECUTEINIOTHREAD              = $00000001;
  {$EXTERNALSYM WT_EXECUTEINIOTHREAD}
  WT_EXECUTEINUITHREAD              = $00000002;
  {$EXTERNALSYM WT_EXECUTEINUITHREAD}
  WT_EXECUTEINWAITTHREAD            = $00000004;
  {$EXTERNALSYM WT_EXECUTEINWAITTHREAD}
  WT_EXECUTEONLYONCE                = $00000008;
  {$EXTERNALSYM WT_EXECUTEONLYONCE}
  WT_EXECUTEINTIMERTHREAD           = $00000020;
  {$EXTERNALSYM WT_EXECUTEINTIMERTHREAD}
  WT_EXECUTELONGFUNCTION            = $00000010;
  {$EXTERNALSYM WT_EXECUTELONGFUNCTION}
  WT_EXECUTEINPERSISTENTIOTHREAD    = $00000040;
  {$EXTERNALSYM WT_EXECUTEINPERSISTENTIOTHREAD}
  WT_EXECUTEINPERSISTENTTHREAD      = $00000080;
  {$EXTERNALSYM WT_EXECUTEINPERSISTENTTHREAD}
  WT_TRANSFER_IMPERSONATION         = $00000100;
  {$EXTERNALSYM WT_TRANSFER_IMPERSONATION}

function WT_SET_MAX_THREADPOOL_THREADS(var Flags: DWORD; Limit: DWORD): DWORD;
{$EXTERNALSYM WT_SET_MAX_THREADPOOL_THREADS}

type
  WAITORTIMERCALLBACKFUNC = procedure(P: PVOID; B: ByteBool); stdcall;
  {$EXTERNALSYM WAITORTIMERCALLBACKFUNC}
  WORKERCALLBACKFUNC = procedure(P: PVOID); stdcall;
  {$EXTERNALSYM WORKERCALLBACKFUNC}
  APC_CALLBACK_FUNCTION = procedure(D: DWORD; P1, P2: PVOID); stdcall;
  {$EXTERNALSYM APC_CALLBACK_FUNCTION}

const
  WT_EXECUTEINLONGTHREAD = $00000010;
  {$EXTERNALSYM WT_EXECUTEINLONGTHREAD}
  WT_EXECUTEDELETEWAIT   = $00000008;
  {$EXTERNALSYM WT_EXECUTEDELETEWAIT}

type
  _ACTIVATION_CONTEXT_INFO_CLASS = DWORD;
  {$EXTERNALSYM _ACTIVATION_CONTEXT_INFO_CLASS}
  ACTIVATION_CONTEXT_INFO_CLASS = _ACTIVATION_CONTEXT_INFO_CLASS;
  {$EXTERNALSYM ACTIVATION_CONTEXT_INFO_CLASS}
  TActivationContextInfoClass = ACTIVATION_CONTEXT_INFO_CLASS;

const
  ActivationContextBasicInformation                       = 1;
  {$EXTERNALSYM ActivationContextBasicInformation}
  ActivationContextDetailedInformation                    = 2;
  {$EXTERNALSYM ActivationContextDetailedInformation}
  AssemblyDetailedInformationInActivationContxt           = 3;
  {$EXTERNALSYM AssemblyDetailedInformationInActivationContxt}
  FileInformationInAssemblyOfAssemblyInActivationContxt   = 4;
  {$EXTERNALSYM FileInformationInAssemblyOfAssemblyInActivationContxt}
  MaxActivationContextInfoClass                           = 5;
  {$EXTERNALSYM MaxActivationContextInfoClass}

type
  PACTIVATION_CONTEXT_QUERY_INDEX = ^ACTIVATION_CONTEXT_QUERY_INDEX;
  {$EXTERNALSYM PACTIVATION_CONTEXT_QUERY_INDEX}
  _ACTIVATION_CONTEXT_QUERY_INDEX = record
    ulAssemblyIndex: DWORD;
    ulFileIndexInAssembly: DWORD;
  end;
  {$EXTERNALSYM _ACTIVATION_CONTEXT_QUERY_INDEX}
  ACTIVATION_CONTEXT_QUERY_INDEX = _ACTIVATION_CONTEXT_QUERY_INDEX;
  {$EXTERNALSYM ACTIVATION_CONTEXT_QUERY_INDEX}
  TActivationContextQueryIndex = ACTIVATION_CONTEXT_QUERY_INDEX;
  PActivationContextQueryIndex = PACTIVATION_CONTEXT_QUERY_INDEX;

const
  ACTIVATION_CONTEXT_PATH_TYPE_NONE        = 1;
  {$EXTERNALSYM ACTIVATION_CONTEXT_PATH_TYPE_NONE}
  ACTIVATION_CONTEXT_PATH_TYPE_WIN32_FILE  = 2;
  {$EXTERNALSYM ACTIVATION_CONTEXT_PATH_TYPE_WIN32_FILE}
  ACTIVATION_CONTEXT_PATH_TYPE_URL         = 3;
  {$EXTERNALSYM ACTIVATION_CONTEXT_PATH_TYPE_URL}
  ACTIVATION_CONTEXT_PATH_TYPE_ASSEMBLYREF = 4;
  {$EXTERNALSYM ACTIVATION_CONTEXT_PATH_TYPE_ASSEMBLYREF}

type
  PASSEMBLY_FILE_DETAILED_INFORMATION = ^ASSEMBLY_DLL_REDIRECTION_DETAILED_INFORMATION;
  {$EXTERNALSYM PASSEMBLY_FILE_DETAILED_INFORMATION}
  _ASSEMBLY_FILE_DETAILED_INFORMATION = record
    ulFlags: DWORD;
    ulFilenameLength: DWORD;
    ulPathLength: DWORD;
    lpFileName: LPCWSTR;
    lpFilePath: LPCWSTR;
  end;
  {$EXTERNALSYM _ASSEMBLY_FILE_DETAILED_INFORMATION}
  ASSEMBLY_FILE_DETAILED_INFORMATION = _ASSEMBLY_FILE_DETAILED_INFORMATION;
  {$EXTERNALSYM ASSEMBLY_DLL_REDIRECTION_DETAILED_INFORMATION}
  PCASSEMBLY_FILE_DETAILED_INFORMATION = PASSEMBLY_FILE_DETAILED_INFORMATION;
  {$EXTERNALSYM PCASSEMBLY_FILE_DETAILED_INFORMATION}
  TAssemblyFileDetailedInformation = ASSEMBLY_FILE_DETAILED_INFORMATION;
  PAssemblyFileDetailedInformation = PASSEMBLY_FILE_DETAILED_INFORMATION;

//
// compatibility with old names
// The new names use "file" consistently.
//

  _ASSEMBLY_DLL_REDIRECTION_DETAILED_INFORMATION = _ASSEMBLY_FILE_DETAILED_INFORMATION;
  {$EXTERNALSYM _ASSEMBLY_DLL_REDIRECTION_DETAILED_INFORMATION}
  ASSEMBLY_DLL_REDIRECTION_DETAILED_INFORMATION = ASSEMBLY_FILE_DETAILED_INFORMATION;
  {$EXTERNALSYM ASSEMBLY_DLL_REDIRECTION_DETAILED_INFORMATION}
  PASSEMBLY_DLL_REDIRECTION_DETAILED_INFORMATION = PASSEMBLY_FILE_DETAILED_INFORMATION;
  {$EXTERNALSYM PASSEMBLY_DLL_REDIRECTION_DETAILED_INFORMATION}
  PCASSEMBLY_DLL_REDIRECTION_DETAILED_INFORMATION = PCASSEMBLY_FILE_DETAILED_INFORMATION;
  {$EXTERNALSYM PCASSEMBLY_DLL_REDIRECTION_DETAILED_INFORMATION}
  TAssemblyDllRedirectionDetailedInformation = TAssemblyFileDetailedInformation;
  PAssemblyDllRedirectionDetailedInformation = PAssemblyFileDetailedInformation;

  PACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION = ^ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION;
  {$EXTERNALSYM PACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION}
  _ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION = record
    ulFlags: DWORD;
    ulEncodedAssemblyIdentityLength: DWORD; // in bytes
    ulManifestPathType: DWORD;              // ACTIVATION_CONTEXT_PATH_TYPE_*
    ulManifestPathLength: DWORD;            // in bytes
    liManifestLastWriteTime: LARGE_INTEGER; // FILETIME
    ulPolicyPathType: DWORD;                // ACTIVATION_CONTEXT_PATH_TYPE_*
    ulPolicyPathLength: DWORD;              // in bytes
    liPolicyLastWriteTime: LARGE_INTEGER;   // FILETIME
    ulMetadataSatelliteRosterIndex: DWORD;
    ulManifestVersionMajor: DWORD;          // 1
    ulManifestVersionMinor: DWORD;          // 0
    ulPolicyVersionMajor: DWORD;            // 0
    ulPolicyVersionMinor: DWORD;            // 0
    ulAssemblyDirectoryNameLength: DWORD;   // in bytes
    lpAssemblyEncodedAssemblyIdentity: LPCWSTR;
    lpAssemblyManifestPath: LPCWSTR;
    lpAssemblyPolicyPath: LPCWSTR;
    lpAssemblyDirectoryName: LPCWSTR;
    ulFileCount: DWORD;
  end;
  {$EXTERNALSYM _ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION}
  ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION = _ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION;
  {$EXTERNALSYM ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION}
  TActivationContextAssemblyDetailedInformation = ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION;
  PActivationContextAssemblyDetailedInformation = PACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION;

  PACTIVATION_CONTEXT_DETAILED_INFORMATION = ^ACTIVATION_CONTEXT_DETAILED_INFORMATION;
  {$EXTERNALSYM PACTIVATION_CONTEXT_DETAILED_INFORMATION}
  _ACTIVATION_CONTEXT_DETAILED_INFORMATION = record
    dwFlags: DWORD;
    ulFormatVersion: DWORD;
    ulAssemblyCount: DWORD;
    ulRootManifestPathType: DWORD;
    ulRootManifestPathChars: DWORD;
    ulRootConfigurationPathType: DWORD;
    ulRootConfigurationPathChars: DWORD;
    ulAppDirPathType: DWORD;
    ulAppDirPathChars: DWORD;
    lpRootManifestPath: LPCWSTR;
    lpRootConfigurationPath: LPCWSTR;
    lpAppDirPath: LPCWSTR;
  end;
  {$EXTERNALSYM _ACTIVATION_CONTEXT_DETAILED_INFORMATION}
  ACTIVATION_CONTEXT_DETAILED_INFORMATION = _ACTIVATION_CONTEXT_DETAILED_INFORMATION;
  {$EXTERNALSYM ACTIVATION_CONTEXT_DETAILED_INFORMATION}
  TActivationContextDetailedInformation = ACTIVATION_CONTEXT_DETAILED_INFORMATION;
  PActivationContextDetailedInformation = PACTIVATION_CONTEXT_DETAILED_INFORMATION;

const
  DLL_PROCESS_ATTACH     = 1;
  {$EXTERNALSYM DLL_PROCESS_ATTACH}
  DLL_THREAD_ATTACH      = 2;
  {$EXTERNALSYM DLL_THREAD_ATTACH}
  DLL_THREAD_DETACH      = 3;
  {$EXTERNALSYM DLL_THREAD_DETACH}
  DLL_PROCESS_DETACH     = 0;
  {$EXTERNALSYM DLL_PROCESS_DETACH}
  DLL_PROCESS_VERIFIER   = 4;
  {$EXTERNALSYM DLL_PROCESS_VERIFIER}

//
// Defines for the READ flags for Eventlogging
//

  EVENTLOG_SEQUENTIAL_READ = $0001;
  {$EXTERNALSYM EVENTLOG_SEQUENTIAL_READ}
  EVENTLOG_SEEK_READ       = $0002;
  {$EXTERNALSYM EVENTLOG_SEEK_READ}
  EVENTLOG_FORWARDS_READ   = $0004;
  {$EXTERNALSYM EVENTLOG_FORWARDS_READ}
  EVENTLOG_BACKWARDS_READ  = $0008;
  {$EXTERNALSYM EVENTLOG_BACKWARDS_READ}

//
// The types of events that can be logged.
//

  EVENTLOG_SUCCESS          = $0000;
  {$EXTERNALSYM EVENTLOG_SUCCESS}
  EVENTLOG_ERROR_TYPE       = $0001;
  {$EXTERNALSYM EVENTLOG_ERROR_TYPE}
  EVENTLOG_WARNING_TYPE     = $0002;
  {$EXTERNALSYM EVENTLOG_WARNING_TYPE}
  EVENTLOG_INFORMATION_TYPE = $0004;
  {$EXTERNALSYM EVENTLOG_INFORMATION_TYPE}
  EVENTLOG_AUDIT_SUCCESS    = $0008;
  {$EXTERNALSYM EVENTLOG_AUDIT_SUCCESS}
  EVENTLOG_AUDIT_FAILURE    = $0010;
  {$EXTERNALSYM EVENTLOG_AUDIT_FAILURE}

//
// Defines for the WRITE flags used by Auditing for paired events
// These are not implemented in Product 1
//

  EVENTLOG_START_PAIRED_EVENT    = $0001;
  {$EXTERNALSYM EVENTLOG_START_PAIRED_EVENT}
  EVENTLOG_END_PAIRED_EVENT      = $0002;
  {$EXTERNALSYM EVENTLOG_END_PAIRED_EVENT}
  EVENTLOG_END_ALL_PAIRED_EVENTS = $0004;
  {$EXTERNALSYM EVENTLOG_END_ALL_PAIRED_EVENTS}
  EVENTLOG_PAIRED_EVENT_ACTIVE   = $0008;
  {$EXTERNALSYM EVENTLOG_PAIRED_EVENT_ACTIVE}
  EVENTLOG_PAIRED_EVENT_INACTIVE = $0010;
  {$EXTERNALSYM EVENTLOG_PAIRED_EVENT_INACTIVE}

//
// Structure that defines the header of the Eventlog record. This is the
// fixed-sized portion before all the variable-length strings, binary
// data and pad bytes.
//
// TimeGenerated is the time it was generated at the client.
// TimeWritten is the time it was put into the log at the server end.
//

type
  PEventlogrecord = ^EVENTLOGRECORD;
  _EVENTLOGRECORD = record
    Length: DWORD; // Length of full record
    Reserved: DWORD; // Used by the service
    RecordNumber: DWORD; // Absolute record number
    TimeGenerated: DWORD; // Seconds since 1-1-1970
    TimeWritten: DWORD; // Seconds since 1-1-1970
    EventID: DWORD;
    EventType: Word;
    NumStrings: Word;
    EventCategory: Word;
    ReservedFlags: Word; // For use with paired events (auditing)
    ClosingRecordNumber: DWORD; // For use with paired events (auditing)
    StringOffset: DWORD; // Offset from beginning of record
    UserSidLength: DWORD;
    UserSidOffset: DWORD;
    DataLength: DWORD;
    DataOffset: DWORD; // Offset from beginning of record
    //
    // Then follow:
    //
    // WCHAR SourceName[]
    // WCHAR Computername[]
    // SID   UserSid
    // WCHAR Strings[]
    // BYTE  Data[]
    // AnsiChar  Pad[]
    // DWORD Length;
    //
  end;
  {$EXTERNALSYM _EVENTLOGRECORD}
  EVENTLOGRECORD = _EVENTLOGRECORD;
  {$EXTERNALSYM EVENTLOGRECORD}
  TEventlogrecord = EVENTLOGRECORD;

const
  MAXLOGICALLOGNAMESIZE = 256;
  {$EXTERNALSYM MAXLOGICALLOGNAMESIZE}

type
  PEventsForLogFile = ^EVENTSFORLOGFILE;
  _EVENTSFORLOGFILE = record
    ulSize: DWORD;
    szLogicalLogFile: array [0..MAXLOGICALLOGNAMESIZE - 1] of WCHAR; // name of the logical file-security/application/system
    ulNumRecords: DWORD;
    pEventLogRecords: array [0..0] of EVENTLOGRECORD;
  end;
  {$EXTERNALSYM _EVENTSFORLOGFILE}
  EVENTSFORLOGFILE = _EVENTSFORLOGFILE;
  {$EXTERNALSYM EVENTSFORLOGFILE}
  TEventsForLogFile = EVENTSFORLOGFILE;

  PPackedEventInfo = ^PACKEDEVENTINFO;
  _PACKEDEVENTINFO = record
    ulSize: DWORD;                    // total size of the structure
    ulNumEventsForLogFile: DWORD;     // number of EventsForLogFile structure that follow
    ulOffsets: array [0..0] of DWORD; // the offsets from the start of this structure to the EVENTSFORLOGFILE structure
  end;
  {$EXTERNALSYM _PACKEDEVENTINFO}
  PACKEDEVENTINFO = _PACKEDEVENTINFO;
  {$EXTERNALSYM PACKEDEVENTINFO}
  TPackedEventInfo = PACKEDEVENTINFO;

//
// Registry Specific Access Rights.
//

const
  KEY_QUERY_VALUE        = $0001;
  {$EXTERNALSYM KEY_QUERY_VALUE}
  KEY_SET_VALUE          = $0002;
  {$EXTERNALSYM KEY_SET_VALUE}
  KEY_CREATE_SUB_KEY     = $0004;
  {$EXTERNALSYM KEY_CREATE_SUB_KEY}
  KEY_ENUMERATE_SUB_KEYS = $0008;
  {$EXTERNALSYM KEY_ENUMERATE_SUB_KEYS}
  KEY_NOTIFY             = $0010;
  {$EXTERNALSYM KEY_NOTIFY}
  KEY_CREATE_LINK        = $0020;
  {$EXTERNALSYM KEY_CREATE_LINK}
  KEY_WOW64_32KEY        = $0200;
  {$EXTERNALSYM KEY_WOW64_32KEY}
  KEY_WOW64_64KEY        = $0100;
  {$EXTERNALSYM KEY_WOW64_64KEY}
  KEY_WOW64_RES          = $0300;
  {$EXTERNALSYM KEY_WOW64_RES}

  KEY_READ = STANDARD_RIGHTS_READ or KEY_QUERY_VALUE or KEY_ENUMERATE_SUB_KEYS or
    KEY_NOTIFY  and (not SYNCHRONIZE);
  {$EXTERNALSYM KEY_READ}

  KEY_WRITE = STANDARD_RIGHTS_WRITE or KEY_SET_VALUE or KEY_CREATE_SUB_KEY and
    (not SYNCHRONIZE);
  {$EXTERNALSYM KEY_WRITE}

  KEY_EXECUTE = KEY_READ and  (not SYNCHRONIZE);
  {$EXTERNALSYM KEY_EXECUTE}

  KEY_ALL_ACCESS = (STANDARD_RIGHTS_ALL or KEY_QUERY_VALUE or KEY_SET_VALUE or
    KEY_CREATE_SUB_KEY or KEY_ENUMERATE_SUB_KEYS or KEY_NOTIFY or
    KEY_CREATE_LINK) and (not SYNCHRONIZE);
  {$EXTERNALSYM KEY_ALL_ACCESS}

//
// Open/Create Options
//

  REG_OPTION_RESERVED = $00000000; // Parameter is reserved
  {$EXTERNALSYM REG_OPTION_RESERVED}

  REG_OPTION_NON_VOLATILE = $00000000; // Key is preserved when system is rebooted
  {$EXTERNALSYM REG_OPTION_NON_VOLATILE}

  REG_OPTION_VOLATILE = $00000001; // Key is not preserved when system is rebooted
  {$EXTERNALSYM REG_OPTION_VOLATILE}

  REG_OPTION_CREATE_LINK = $00000002; // Created key is a symbolic link
  {$EXTERNALSYM REG_OPTION_CREATE_LINK}

  REG_OPTION_BACKUP_RESTORE = $00000004; // open for backup or restore
  {$EXTERNALSYM REG_OPTION_BACKUP_RESTORE}
                                                    // special access rules
                                                    // privilege required

  REG_OPTION_OPEN_LINK = $00000008; // Open symbolic link
  {$EXTERNALSYM REG_OPTION_OPEN_LINK}

  REG_LEGAL_OPTION = REG_OPTION_RESERVED or REG_OPTION_NON_VOLATILE or
    REG_OPTION_VOLATILE or REG_OPTION_CREATE_LINK or REG_OPTION_BACKUP_RESTORE or
    REG_OPTION_OPEN_LINK;
  {$EXTERNALSYM REG_LEGAL_OPTION}

//
// Key creation/open disposition
//

  REG_CREATED_NEW_KEY     = $00000001; // New Registry Key created
  {$EXTERNALSYM REG_CREATED_NEW_KEY}
  REG_OPENED_EXISTING_KEY = $00000002; // Existing Key opened
  {$EXTERNALSYM REG_OPENED_EXISTING_KEY}

//
// hive format to be used by Reg(Nt)SaveKeyEx
//

  REG_STANDARD_FORMAT    = 1;
  {$EXTERNALSYM REG_STANDARD_FORMAT}
  REG_LATEST_FORMAT      = 2;
  {$EXTERNALSYM REG_LATEST_FORMAT}
  REG_NO_COMPRESSION     = 4;
  {$EXTERNALSYM REG_NO_COMPRESSION}

//
// Key restore flags
//

  REG_WHOLE_HIVE_VOLATILE = $00000001; // Restore whole hive volatile
  {$EXTERNALSYM REG_WHOLE_HIVE_VOLATILE}
  REG_REFRESH_HIVE        = $00000002; // Unwind changes to last flush
  {$EXTERNALSYM REG_REFRESH_HIVE}
  REG_NO_LAZY_FLUSH       = $00000004; // Never lazy flush this hive
  {$EXTERNALSYM REG_NO_LAZY_FLUSH}
  REG_FORCE_RESTORE       = $00000008; // Force the restore process even when we have open handles on subkeys
  {$EXTERNALSYM REG_FORCE_RESTORE}
  REG_APP_HIVE            = $00000010;  // Loads the hive visible to the calling process
  {$EXTERNALSYM REG_APP_HIVE}
  REG_PROCESS_PRIVATE     = $00000020;  // Hive cannot be mounted by any other process while in use
  {$EXTERNALSYM REG_PROCESS_PRIVATE}
  REG_START_JOURNAL       = $00000040;  // Starts Hive Journal
  {$EXTERNALSYM REG_START_JOURNAL}
  REG_HIVE_EXACT_FILE_GROWTH = $00000080;  // Grow hive file in exact 4k increments
  {$EXTERNALSYM REG_HIVE_EXACT_FILE_GROWTH}
  REG_HIVE_NO_RM          = $00000100;  // No RM is started for this hive (no transactions)
  {$EXTERNALSYM REG_HIVE_NO_RM}
  REG_HIVE_SINGLE_LOG     = $00000200;  // Legacy single logging is used for this hive
  {$EXTERNALSYM REG_HIVE_SINGLE_LOG}
  REG_BOOT_HIVE           = $00000400;  // This hive might be used by the OS loader
  {$EXTERNALSYM REG_BOOT_HIVE}

//
// Unload Flags
//

  REG_FORCE_UNLOAD = 1;
  {$EXTERNALSYM REG_FORCE_UNLOAD}

// end_ntddk end_wdm end_nthal

//
// Notify filter values
//

  REG_NOTIFY_CHANGE_NAME       = $00000001; // Create or delete (child)
  {$EXTERNALSYM REG_NOTIFY_CHANGE_NAME}
  REG_NOTIFY_CHANGE_ATTRIBUTES = $00000002;
  {$EXTERNALSYM REG_NOTIFY_CHANGE_ATTRIBUTES}
  REG_NOTIFY_CHANGE_LAST_SET   = $00000004; // time stamp
  {$EXTERNALSYM REG_NOTIFY_CHANGE_LAST_SET}
  REG_NOTIFY_CHANGE_SECURITY   = $00000008;
  {$EXTERNALSYM REG_NOTIFY_CHANGE_SECURITY}

  REG_LEGAL_CHANGE_FILTER = REG_NOTIFY_CHANGE_NAME or REG_NOTIFY_CHANGE_ATTRIBUTES or
    REG_NOTIFY_CHANGE_LAST_SET or REG_NOTIFY_CHANGE_SECURITY;
  {$EXTERNALSYM REG_LEGAL_CHANGE_FILTER}

//
//
// Predefined Value Types.
//

  REG_NONE      = 0; // No value type
  {$EXTERNALSYM REG_NONE}
  REG_SZ        = 1; // Unicode nul terminated string
  {$EXTERNALSYM REG_SZ}
  REG_EXPAND_SZ = 2; // Unicode nul terminated string
  {$EXTERNALSYM REG_EXPAND_SZ}
                                            // (with environment variable references)
  REG_BINARY                     = 3; // Free form binary
  {$EXTERNALSYM REG_BINARY}
  REG_DWORD                      = 4; // 32-bit number
  {$EXTERNALSYM REG_DWORD}
  REG_DWORD_LITTLE_ENDIAN        = 4; // 32-bit number (same as REG_DWORD)
  {$EXTERNALSYM REG_DWORD_LITTLE_ENDIAN}
  REG_DWORD_BIG_ENDIAN           = 5; // 32-bit number
  {$EXTERNALSYM REG_DWORD_BIG_ENDIAN}
  REG_LINK                       = 6; // Symbolic Link (unicode)
  {$EXTERNALSYM REG_LINK}
  REG_MULTI_SZ                   = 7; // Multiple Unicode strings
  {$EXTERNALSYM REG_MULTI_SZ}
  REG_RESOURCE_LIST              = 8; // Resource list in the resource map
  {$EXTERNALSYM REG_RESOURCE_LIST}
  REG_FULL_RESOURCE_DESCRIPTOR   = 9; // Resource list in the hardware description
  {$EXTERNALSYM REG_FULL_RESOURCE_DESCRIPTOR}
  REG_RESOURCE_REQUIREMENTS_LIST = 10;
  {$EXTERNALSYM REG_RESOURCE_REQUIREMENTS_LIST}
  REG_QWORD                      = 11; // 64-bit number
  {$EXTERNALSYM REG_QWORD}
  REG_QWORD_LITTLE_ENDIAN        = 11; // 64-bit number (same as REG_QWORD)
  {$EXTERNALSYM REG_QWORD_LITTLE_ENDIAN}

//
// Service Types (Bit Mask)
//

  SERVICE_KERNEL_DRIVER      = $00000001;
  {$EXTERNALSYM SERVICE_KERNEL_DRIVER}
  SERVICE_FILE_SYSTEM_DRIVER = $00000002;
  {$EXTERNALSYM SERVICE_FILE_SYSTEM_DRIVER}
  SERVICE_ADAPTER            = $00000004;
  {$EXTERNALSYM SERVICE_ADAPTER}
  SERVICE_RECOGNIZER_DRIVER  = $00000008;
  {$EXTERNALSYM SERVICE_RECOGNIZER_DRIVER}

  SERVICE_DRIVER = SERVICE_KERNEL_DRIVER or SERVICE_FILE_SYSTEM_DRIVER or
    SERVICE_RECOGNIZER_DRIVER;
  {$EXTERNALSYM SERVICE_DRIVER}

  SERVICE_WIN32_OWN_PROCESS   = $00000010;
  {$EXTERNALSYM SERVICE_WIN32_OWN_PROCESS}
  SERVICE_WIN32_SHARE_PROCESS = $00000020;
  {$EXTERNALSYM SERVICE_WIN32_SHARE_PROCESS}

  SERVICE_WIN32 = SERVICE_WIN32_OWN_PROCESS or SERVICE_WIN32_SHARE_PROCESS;
  {$EXTERNALSYM SERVICE_WIN32}

  SERVICE_INTERACTIVE_PROCESS = $00000100;
  {$EXTERNALSYM SERVICE_INTERACTIVE_PROCESS}

  SERVICE_TYPE_ALL = SERVICE_WIN32 or SERVICE_ADAPTER or SERVICE_DRIVER or
    SERVICE_INTERACTIVE_PROCESS;
  {$EXTERNALSYM SERVICE_TYPE_ALL}

//
// Start Type
//

  SERVICE_BOOT_START   = $00000000;
  {$EXTERNALSYM SERVICE_BOOT_START}
  SERVICE_SYSTEM_START = $00000001;
  {$EXTERNALSYM SERVICE_SYSTEM_START}
  SERVICE_AUTO_START   = $00000002;
  {$EXTERNALSYM SERVICE_AUTO_START}
  SERVICE_DEMAND_START = $00000003;
  {$EXTERNALSYM SERVICE_DEMAND_START}
  SERVICE_DISABLED     = $00000004;
  {$EXTERNALSYM SERVICE_DISABLED}

//
// Error control type
//

  SERVICE_ERROR_IGNORE   = $00000000;
  {$EXTERNALSYM SERVICE_ERROR_IGNORE}
  SERVICE_ERROR_NORMAL   = $00000001;
  {$EXTERNALSYM SERVICE_ERROR_NORMAL}
  SERVICE_ERROR_SEVERE   = $00000002;
  {$EXTERNALSYM SERVICE_ERROR_SEVERE}
  SERVICE_ERROR_CRITICAL = $00000003;
  {$EXTERNALSYM SERVICE_ERROR_CRITICAL}

//
// Define the registry driver node enumerations
//

const

//SERVICE_NODE_TYPE

  DriverType               = SERVICE_KERNEL_DRIVER;
  FileSystemType           = SERVICE_FILE_SYSTEM_DRIVER;
  Win32ServiceOwnProcess   = SERVICE_WIN32_OWN_PROCESS;
  Win32ServiceShareProcess = SERVICE_WIN32_SHARE_PROCESS;
  AdapterType              = SERVICE_ADAPTER;
  RecognizerType           = SERVICE_RECOGNIZER_DRIVER;

//SERVICE_LOAD_TYPE

  BootLoad    = SERVICE_BOOT_START;
  SystemLoad  = SERVICE_SYSTEM_START;
  AutoLoad    = SERVICE_AUTO_START;
  DemandLoad  = SERVICE_DEMAND_START;
  DisableLoad = SERVICE_DISABLED;

//SERVICE_ERROR_TYPE

  IgnoreError   = SERVICE_ERROR_IGNORE;
  NormalError   = SERVICE_ERROR_NORMAL;
  SevereError   = SERVICE_ERROR_SEVERE;
  CriticalError = SERVICE_ERROR_CRITICAL;

//
// IOCTL_TAPE_ERASE definitions
//

type
  SERVICE_NODE_TYPE = DWORD;
  {$EXTERNALSYM SERVICE_NODE_TYPE}
  TServiceNodeType = SERVICE_NODE_TYPE;
  SERVICE_LOAD_TYPE = DWORD;
  {$EXTERNALSYM SERVICE_LOAD_TYPE}
  TServiceLoadType = SERVICE_LOAD_TYPE;
  SERVICE_ERROR_TYPE = DWORD;
  {$EXTERNALSYM SERVICE_ERROR_TYPE}
  TServiceErrorType = SERVICE_ERROR_TYPE;

const
  TAPE_ERASE_SHORT = 0;
  {$EXTERNALSYM TAPE_ERASE_SHORT}
  TAPE_ERASE_LONG  = 1;
  {$EXTERNALSYM TAPE_ERASE_LONG}

type
  PTAPE_ERASE = ^TAPE_ERASE;
  {$EXTERNALSYM PTAPE_ERASE}
  _TAPE_ERASE = record
    Type_: DWORD;
    Immediate: ByteBool;
  end;
  {$EXTERNALSYM _TAPE_ERASE}
  TAPE_ERASE = _TAPE_ERASE;
  {$EXTERNALSYM TAPE_ERASE}
  TTapeErase = TAPE_ERASE;
  PTapeErase = PTAPE_ERASE;

//
// IOCTL_TAPE_PREPARE definitions
//

const
  TAPE_LOAD    = 0;
  {$EXTERNALSYM TAPE_LOAD}
  TAPE_UNLOAD  = 1;
  {$EXTERNALSYM TAPE_UNLOAD}
  TAPE_TENSION = 2;
  {$EXTERNALSYM TAPE_TENSION}
  TAPE_LOCK    = 3;
  {$EXTERNALSYM TAPE_LOCK}
  TAPE_UNLOCK  = 4;
  {$EXTERNALSYM TAPE_UNLOCK}
  TAPE_FORMAT  = 5;
  {$EXTERNALSYM TAPE_FORMAT}

type
  PTAPE_PREPARE = ^TAPE_PREPARE;
  {$EXTERNALSYM PTAPE_PREPARE}
  _TAPE_PREPARE = record
    Operation: DWORD;
    Immediate: ByteBool;
  end;
  {$EXTERNALSYM _TAPE_PREPARE}
  TAPE_PREPARE = _TAPE_PREPARE;
  {$EXTERNALSYM TAPE_PREPARE}
  TTapePrepare = TAPE_PREPARE;
  PTapePrepare = PTAPE_PREPARE;

//
// IOCTL_TAPE_WRITE_MARKS definitions
//

const
  TAPE_SETMARKS        = 0;
  {$EXTERNALSYM TAPE_SETMARKS}
  TAPE_FILEMARKS       = 1;
  {$EXTERNALSYM TAPE_FILEMARKS}
  TAPE_SHORT_FILEMARKS = 2;
  {$EXTERNALSYM TAPE_SHORT_FILEMARKS}
  TAPE_LONG_FILEMARKS  = 3;
  {$EXTERNALSYM TAPE_LONG_FILEMARKS}

type
  PTAPE_WRITE_MARKS = ^TAPE_WRITE_MARKS;
  {$EXTERNALSYM PTAPE_WRITE_MARKS}
  _TAPE_WRITE_MARKS = record
    Type_: DWORD;
    Count: DWORD;
    Immediate: ByteBool;
  end;
  {$EXTERNALSYM _TAPE_WRITE_MARKS}
  TAPE_WRITE_MARKS = _TAPE_WRITE_MARKS;
  {$EXTERNALSYM TAPE_WRITE_MARKS}
  TTapeWriteMarks = TAPE_WRITE_MARKS;
  PTapeWriteMarks = PTAPE_WRITE_MARKS;

//
// IOCTL_TAPE_GET_POSITION definitions
//

const
  TAPE_ABSOLUTE_POSITION       = 0;
  {$EXTERNALSYM TAPE_ABSOLUTE_POSITION}
  TAPE_LOGICAL_POSITION        = 1;
  {$EXTERNALSYM TAPE_LOGICAL_POSITION}
  TAPE_PSEUDO_LOGICAL_POSITION = 2;
  {$EXTERNALSYM TAPE_PSEUDO_LOGICAL_POSITION}

type
  PTAPE_GET_POSITION = ^TAPE_GET_POSITION;
  {$EXTERNALSYM PTAPE_GET_POSITION}
  _TAPE_GET_POSITION = record
    Type_: DWORD;
    Partition: DWORD;
    Offset: LARGE_INTEGER;
  end;
  {$EXTERNALSYM _TAPE_GET_POSITION}
  TAPE_GET_POSITION = _TAPE_GET_POSITION;
  {$EXTERNALSYM TAPE_GET_POSITION}
  TTapeGetPosition = TAPE_GET_POSITION;
  PTapeGetPosition = PTAPE_GET_POSITION;

//
// IOCTL_TAPE_SET_POSITION definitions
//

const
  TAPE_REWIND                = 0;
  {$EXTERNALSYM TAPE_REWIND}
  TAPE_ABSOLUTE_BLOCK        = 1;
  {$EXTERNALSYM TAPE_ABSOLUTE_BLOCK}
  TAPE_LOGICAL_BLOCK         = 2;
  {$EXTERNALSYM TAPE_LOGICAL_BLOCK}
  TAPE_PSEUDO_LOGICAL_BLOCK  = 3;
  {$EXTERNALSYM TAPE_PSEUDO_LOGICAL_BLOCK}
  TAPE_SPACE_END_OF_DATA     = 4;
  {$EXTERNALSYM TAPE_SPACE_END_OF_DATA}
  TAPE_SPACE_RELATIVE_BLOCKS = 5;
  {$EXTERNALSYM TAPE_SPACE_RELATIVE_BLOCKS}
  TAPE_SPACE_FILEMARKS       = 6;
  {$EXTERNALSYM TAPE_SPACE_FILEMARKS}
  TAPE_SPACE_SEQUENTIAL_FMKS = 7;
  {$EXTERNALSYM TAPE_SPACE_SEQUENTIAL_FMKS}
  TAPE_SPACE_SETMARKS        = 8;
  {$EXTERNALSYM TAPE_SPACE_SETMARKS}
  TAPE_SPACE_SEQUENTIAL_SMKS = 9;
  {$EXTERNALSYM TAPE_SPACE_SEQUENTIAL_SMKS}

type
  PTAPE_SET_POSITION = ^TAPE_SET_POSITION;
  {$EXTERNALSYM PTAPE_SET_POSITION}
  _TAPE_SET_POSITION = record
    Method: DWORD;
    Partition: DWORD;
    Offset: LARGE_INTEGER;
    Immediate: ByteBool;
  end;
  {$EXTERNALSYM _TAPE_SET_POSITION}
  TAPE_SET_POSITION = _TAPE_SET_POSITION;
  {$EXTERNALSYM TAPE_SET_POSITION}
  TTapeSetPosition = TAPE_SET_POSITION;
  PTapeSetPosition = PTAPE_SET_POSITION;

//
// IOCTL_TAPE_GET_DRIVE_PARAMS definitions
//

//
// Definitions for FeaturesLow parameter
//

const
  TAPE_DRIVE_FIXED     = $00000001;
  {$EXTERNALSYM TAPE_DRIVE_FIXED}
  TAPE_DRIVE_SELECT    = $00000002;
  {$EXTERNALSYM TAPE_DRIVE_SELECT}
  TAPE_DRIVE_INITIATOR = $00000004;
  {$EXTERNALSYM TAPE_DRIVE_INITIATOR}

  TAPE_DRIVE_ERASE_SHORT     = $00000010;
  {$EXTERNALSYM TAPE_DRIVE_ERASE_SHORT}
  TAPE_DRIVE_ERASE_LONG      = $00000020;
  {$EXTERNALSYM TAPE_DRIVE_ERASE_LONG}
  TAPE_DRIVE_ERASE_BOP_ONLY  = $00000040;
  {$EXTERNALSYM TAPE_DRIVE_ERASE_BOP_ONLY}
  TAPE_DRIVE_ERASE_IMMEDIATE = $00000080;
  {$EXTERNALSYM TAPE_DRIVE_ERASE_IMMEDIATE}

  TAPE_DRIVE_TAPE_CAPACITY  = $00000100;
  {$EXTERNALSYM TAPE_DRIVE_TAPE_CAPACITY}
  TAPE_DRIVE_TAPE_REMAINING = $00000200;
  {$EXTERNALSYM TAPE_DRIVE_TAPE_REMAINING}
  TAPE_DRIVE_FIXED_BLOCK    = $00000400;
  {$EXTERNALSYM TAPE_DRIVE_FIXED_BLOCK}
  TAPE_DRIVE_VARIABLE_BLOCK = $00000800;
  {$EXTERNALSYM TAPE_DRIVE_VARIABLE_BLOCK}

  TAPE_DRIVE_WRITE_PROTECT = $00001000;
  {$EXTERNALSYM TAPE_DRIVE_WRITE_PROTECT}
  TAPE_DRIVE_EOT_WZ_SIZE   = $00002000;
  {$EXTERNALSYM TAPE_DRIVE_EOT_WZ_SIZE}

  TAPE_DRIVE_ECC         = $00010000;
  {$EXTERNALSYM TAPE_DRIVE_ECC}
  TAPE_DRIVE_COMPRESSION = $00020000;
  {$EXTERNALSYM TAPE_DRIVE_COMPRESSION}
  TAPE_DRIVE_PADDING     = $00040000;
  {$EXTERNALSYM TAPE_DRIVE_PADDING}
  TAPE_DRIVE_REPORT_SMKS = $00080000;
  {$EXTERNALSYM TAPE_DRIVE_REPORT_SMKS}

  TAPE_DRIVE_GET_ABSOLUTE_BLK = $00100000;
  {$EXTERNALSYM TAPE_DRIVE_GET_ABSOLUTE_BLK}
  TAPE_DRIVE_GET_LOGICAL_BLK  = $00200000;
  {$EXTERNALSYM TAPE_DRIVE_GET_LOGICAL_BLK}
  TAPE_DRIVE_SET_EOT_WZ_SIZE  = $00400000;
  {$EXTERNALSYM TAPE_DRIVE_SET_EOT_WZ_SIZE}

  TAPE_DRIVE_EJECT_MEDIA      = $01000000;
  {$EXTERNALSYM TAPE_DRIVE_EJECT_MEDIA}
  TAPE_DRIVE_CLEAN_REQUESTS   = $02000000;
  {$EXTERNALSYM TAPE_DRIVE_CLEAN_REQUESTS}
  TAPE_DRIVE_SET_CMP_BOP_ONLY = $04000000;
  {$EXTERNALSYM TAPE_DRIVE_SET_CMP_BOP_ONLY}

  TAPE_DRIVE_RESERVED_BIT = DWORD($80000000); // don't use this bit!
  {$EXTERNALSYM TAPE_DRIVE_RESERVED_BIT}
  //                                              //can't be a low features bit!
//                                              //reserved; high features only

//
// Definitions for FeaturesHigh parameter
//

  TAPE_DRIVE_LOAD_UNLOAD      = DWORD($80000001);
  {$EXTERNALSYM TAPE_DRIVE_LOAD_UNLOAD}
  TAPE_DRIVE_TENSION          = DWORD($80000002);
  {$EXTERNALSYM TAPE_DRIVE_TENSION}
  TAPE_DRIVE_LOCK_UNLOCK      = DWORD($80000004);
  {$EXTERNALSYM TAPE_DRIVE_LOCK_UNLOCK}
  TAPE_DRIVE_REWIND_IMMEDIATE = DWORD($80000008);
  {$EXTERNALSYM TAPE_DRIVE_REWIND_IMMEDIATE}

  TAPE_DRIVE_SET_BLOCK_SIZE  = DWORD($80000010);
  {$EXTERNALSYM TAPE_DRIVE_SET_BLOCK_SIZE}
  TAPE_DRIVE_LOAD_UNLD_IMMED = DWORD($80000020);
  {$EXTERNALSYM TAPE_DRIVE_LOAD_UNLD_IMMED}
  TAPE_DRIVE_TENSION_IMMED   = DWORD($80000040);
  {$EXTERNALSYM TAPE_DRIVE_TENSION_IMMED}
  TAPE_DRIVE_LOCK_UNLK_IMMED = DWORD($80000080);
  {$EXTERNALSYM TAPE_DRIVE_LOCK_UNLK_IMMED}

  TAPE_DRIVE_SET_ECC         = DWORD($80000100);
  {$EXTERNALSYM TAPE_DRIVE_SET_ECC}
  TAPE_DRIVE_SET_COMPRESSION = DWORD($80000200);
  {$EXTERNALSYM TAPE_DRIVE_SET_COMPRESSION}
  TAPE_DRIVE_SET_PADDING     = DWORD($80000400);
  {$EXTERNALSYM TAPE_DRIVE_SET_PADDING}
  TAPE_DRIVE_SET_REPORT_SMKS = DWORD($80000800);
  {$EXTERNALSYM TAPE_DRIVE_SET_REPORT_SMKS}

  TAPE_DRIVE_ABSOLUTE_BLK  = DWORD($80001000);
  {$EXTERNALSYM TAPE_DRIVE_ABSOLUTE_BLK}
  TAPE_DRIVE_ABS_BLK_IMMED = DWORD($80002000);
  {$EXTERNALSYM TAPE_DRIVE_ABS_BLK_IMMED}
  TAPE_DRIVE_LOGICAL_BLK   = DWORD($80004000);
  {$EXTERNALSYM TAPE_DRIVE_LOGICAL_BLK}
  TAPE_DRIVE_LOG_BLK_IMMED = DWORD($80008000);
  {$EXTERNALSYM TAPE_DRIVE_LOG_BLK_IMMED}

  TAPE_DRIVE_END_OF_DATA     = DWORD($80010000);
  {$EXTERNALSYM TAPE_DRIVE_END_OF_DATA}
  TAPE_DRIVE_RELATIVE_BLKS   = DWORD($80020000);
  {$EXTERNALSYM TAPE_DRIVE_RELATIVE_BLKS}
  TAPE_DRIVE_FILEMARKS       = DWORD($80040000);
  {$EXTERNALSYM TAPE_DRIVE_FILEMARKS}
  TAPE_DRIVE_SEQUENTIAL_FMKS = DWORD($80080000);
  {$EXTERNALSYM TAPE_DRIVE_SEQUENTIAL_FMKS}

  TAPE_DRIVE_SETMARKS         = DWORD($80100000);
  {$EXTERNALSYM TAPE_DRIVE_SETMARKS}
  TAPE_DRIVE_SEQUENTIAL_SMKS  = DWORD($80200000);
  {$EXTERNALSYM TAPE_DRIVE_SEQUENTIAL_SMKS}
  TAPE_DRIVE_REVERSE_POSITION = DWORD($80400000);
  {$EXTERNALSYM TAPE_DRIVE_REVERSE_POSITION}
  TAPE_DRIVE_SPACE_IMMEDIATE  = DWORD($80800000);
  {$EXTERNALSYM TAPE_DRIVE_SPACE_IMMEDIATE}

  TAPE_DRIVE_WRITE_SETMARKS   = DWORD($81000000);
  {$EXTERNALSYM TAPE_DRIVE_WRITE_SETMARKS}
  TAPE_DRIVE_WRITE_FILEMARKS  = DWORD($82000000);
  {$EXTERNALSYM TAPE_DRIVE_WRITE_FILEMARKS}
  TAPE_DRIVE_WRITE_SHORT_FMKS = DWORD($84000000);
  {$EXTERNALSYM TAPE_DRIVE_WRITE_SHORT_FMKS}
  TAPE_DRIVE_WRITE_LONG_FMKS  = DWORD($88000000);
  {$EXTERNALSYM TAPE_DRIVE_WRITE_LONG_FMKS}

  TAPE_DRIVE_WRITE_MARK_IMMED = DWORD($90000000);
  {$EXTERNALSYM TAPE_DRIVE_WRITE_MARK_IMMED}
  TAPE_DRIVE_FORMAT           = DWORD($A0000000);
  {$EXTERNALSYM TAPE_DRIVE_FORMAT}
  TAPE_DRIVE_FORMAT_IMMEDIATE = DWORD($C0000000);
  {$EXTERNALSYM TAPE_DRIVE_FORMAT_IMMEDIATE}
  TAPE_DRIVE_HIGH_FEATURES    = DWORD($80000000); // mask for high features flag
  {$EXTERNALSYM TAPE_DRIVE_HIGH_FEATURES}

type
  PTAPE_GET_DRIVE_PARAMETERS = ^TAPE_GET_DRIVE_PARAMETERS;
  {$EXTERNALSYM PTAPE_GET_DRIVE_PARAMETERS}
  _TAPE_GET_DRIVE_PARAMETERS = record
    ECC: ByteBool;
    Compression: ByteBool;
    DataPadding: ByteBool;
    ReportSetmarks: ByteBool;
    DefaultBlockSize: DWORD;
    MaximumBlockSize: DWORD;
    MinimumBlockSize: DWORD;
    MaximumPartitionCount: DWORD;
    FeaturesLow: DWORD;
    FeaturesHigh: DWORD;
    EOTWarningZoneSize: DWORD;
  end;
  {$EXTERNALSYM _TAPE_GET_DRIVE_PARAMETERS}
  TAPE_GET_DRIVE_PARAMETERS = _TAPE_GET_DRIVE_PARAMETERS;
  {$EXTERNALSYM TAPE_GET_DRIVE_PARAMETERS}
  TTapeGetDriveParameters = TAPE_GET_DRIVE_PARAMETERS;
  PTapeGetDriveParameters = PTAPE_GET_DRIVE_PARAMETERS;

//
// IOCTL_TAPE_SET_DRIVE_PARAMETERS definitions
//

  PTAPE_SET_DRIVE_PARAMETERS = ^TAPE_SET_DRIVE_PARAMETERS;
  {$EXTERNALSYM PTAPE_SET_DRIVE_PARAMETERS}
  _TAPE_SET_DRIVE_PARAMETERS = record
    ECC: ByteBool;
    Compression: ByteBool;
    DataPadding: ByteBool;
    ReportSetmarks: ByteBool;
    EOTWarningZoneSize: DWORD;
  end;
  {$EXTERNALSYM _TAPE_SET_DRIVE_PARAMETERS}
  TAPE_SET_DRIVE_PARAMETERS = _TAPE_SET_DRIVE_PARAMETERS;
  {$EXTERNALSYM TAPE_SET_DRIVE_PARAMETERS}
  TTapeSetDriveParameters = TAPE_SET_DRIVE_PARAMETERS;
  PTapeSetDriveParameters = PTAPE_SET_DRIVE_PARAMETERS;

//
// IOCTL_TAPE_GET_MEDIA_PARAMETERS definitions
//

  PTAPE_GET_MEDIA_PARAMETERS = ^TAPE_GET_MEDIA_PARAMETERS;
  {$EXTERNALSYM PTAPE_GET_MEDIA_PARAMETERS}
  _TAPE_GET_MEDIA_PARAMETERS = record
    Capacity: LARGE_INTEGER;
    Remaining: LARGE_INTEGER;
    BlockSize: DWORD;
    PartitionCount: DWORD;
    WriteProtected: ByteBool;
  end;
  {$EXTERNALSYM _TAPE_GET_MEDIA_PARAMETERS}
  TAPE_GET_MEDIA_PARAMETERS = _TAPE_GET_MEDIA_PARAMETERS;
  {$EXTERNALSYM TAPE_GET_MEDIA_PARAMETERS}
  TTapeGetMediaParameters = TAPE_GET_MEDIA_PARAMETERS;
  PTapeGetMediaParameters = PTAPE_GET_MEDIA_PARAMETERS;

//
// IOCTL_TAPE_SET_MEDIA_PARAMETERS definitions
//

  PTAPE_SET_MEDIA_PARAMETERS = ^TAPE_SET_MEDIA_PARAMETERS;
  {$EXTERNALSYM PTAPE_SET_MEDIA_PARAMETERS}
  _TAPE_SET_MEDIA_PARAMETERS = record
    BlockSize: DWORD;
  end;
  {$EXTERNALSYM _TAPE_SET_MEDIA_PARAMETERS}
  TAPE_SET_MEDIA_PARAMETERS = _TAPE_SET_MEDIA_PARAMETERS;
  {$EXTERNALSYM TAPE_SET_MEDIA_PARAMETERS}
  TTapeSetMediaParameters = TAPE_SET_MEDIA_PARAMETERS;
  PTapeSetMediaParameters = PTAPE_SET_MEDIA_PARAMETERS;

//
// IOCTL_TAPE_CREATE_PARTITION definitions
//

const
  TAPE_FIXED_PARTITIONS     = 0;
  {$EXTERNALSYM TAPE_FIXED_PARTITIONS}
  TAPE_SELECT_PARTITIONS    = 1;
  {$EXTERNALSYM TAPE_SELECT_PARTITIONS}
  TAPE_INITIATOR_PARTITIONS = 2;
  {$EXTERNALSYM TAPE_INITIATOR_PARTITIONS}

type
  PTAPE_CREATE_PARTITION = ^TAPE_CREATE_PARTITION;
  {$EXTERNALSYM PTAPE_CREATE_PARTITION}
  _TAPE_CREATE_PARTITION = record
    Method: DWORD;
    Count: DWORD;
    Size: DWORD;
  end;
  {$EXTERNALSYM _TAPE_CREATE_PARTITION}
  TAPE_CREATE_PARTITION = _TAPE_CREATE_PARTITION;
  {$EXTERNALSYM TAPE_CREATE_PARTITION}
  TTapeCreatePartition = TAPE_CREATE_PARTITION;
  PTapeCreatePartition = PTAPE_CREATE_PARTITION;

//
// WMI Methods
//

const
  TAPE_QUERY_DRIVE_PARAMETERS     = 0;
  {$EXTERNALSYM TAPE_QUERY_DRIVE_PARAMETERS}
  TAPE_QUERY_MEDIA_CAPACITY       = 1;
  {$EXTERNALSYM TAPE_QUERY_MEDIA_CAPACITY}
  TAPE_CHECK_FOR_DRIVE_PROBLEM    = 2;
  {$EXTERNALSYM TAPE_CHECK_FOR_DRIVE_PROBLEM}
  TAPE_QUERY_IO_ERROR_DATA        = 3;
  {$EXTERNALSYM TAPE_QUERY_IO_ERROR_DATA}
  TAPE_QUERY_DEVICE_ERROR_DATA    = 4;
  {$EXTERNALSYM TAPE_QUERY_DEVICE_ERROR_DATA}

type
  _TAPE_WMI_OPERATIONS = record
    Method: DWORD;
    DataBufferSize: DWORD;
    DataBuffer: PVOID;
  end;
  {$EXTERNALSYM _TAPE_WMI_OPERATIONS}
  TAPE_WMI_OPERATIONS = _TAPE_WMI_OPERATIONS;
  {$EXTERNALSYM TAPE_WMI_OPERATIONS}
  PTAPE_WMI_OPERATIONS = ^TAPE_WMI_OPERATIONS;
  {$EXTERNALSYM PTAPE_WMI_OPERATIONS}
  TTapeWMIOperations = TAPE_WMI_OPERATIONS;
  PTapeWMIOperations = PTAPE_WMI_OPERATIONS;

//
// Type of drive errors
//

  _TAPE_DRIVE_PROBLEM_TYPE = (
    TapeDriveProblemNone, TapeDriveReadWriteWarning,
    TapeDriveReadWriteError, TapeDriveReadWarning,
    TapeDriveWriteWarning, TapeDriveReadError,
    TapeDriveWriteError, TapeDriveHardwareError,
    TapeDriveUnsupportedMedia, TapeDriveScsiConnectionError,
    TapeDriveTimetoClean, TapeDriveCleanDriveNow,
    TapeDriveMediaLifeExpired, TapeDriveSnappedTape);
  {$EXTERNALSYM _TAPE_DRIVE_PROBLEM_TYPE}
  TAPE_DRIVE_PROBLEM_TYPE = _TAPE_DRIVE_PROBLEM_TYPE;
  TTapeDriveProblemType = TAPE_DRIVE_PROBLEM_TYPE;

const
  ACTIVATION_CONTEXT_SECTION_ASSEMBLY_INFORMATION         = 1;
  {$EXTERNALSYM ACTIVATION_CONTEXT_SECTION_ASSEMBLY_INFORMATION}
  ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION              = 2;
  {$EXTERNALSYM ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION}
  ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION     = 3;
  {$EXTERNALSYM ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION}
  ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION       = 4;
  {$EXTERNALSYM ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION}
  ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION    = 5;
  {$EXTERNALSYM ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION}
  ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION = 6;
  {$EXTERNALSYM ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION}
  ACTIVATION_CONTEXT_SECTION_COM_PROGID_REDIRECTION       = 7;
  {$EXTERNALSYM ACTIVATION_CONTEXT_SECTION_COM_PROGID_REDIRECTION}
  ACTIVATION_CONTEXT_SECTION_GLOBAL_OBJECT_RENAME_TABLE   = 8;
  {$EXTERNALSYM ACTIVATION_CONTEXT_SECTION_GLOBAL_OBJECT_RENAME_TABLE}
  ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES               = 9;
  {$EXTERNALSYM ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES}
  ACTIVATION_CONTEXT_SECTION_APPLICATION_SETTINGS         = 10;
  {$EXTERNALSYM ACTIVATION_CONTEXT_SECTION_APPLICATION_SETTINGS}
  ACTIVATION_CONTEXT_SECTION_COMPATIBILITY_INFO           = 11;
  {$EXTERNALSYM ACTIVATION_CONTEXT_SECTION_COMPATIBILITY_INFO}


type
  {Token elevation type.
   TokenElevationTypePad0 does not belong to this type. It is only a pad.

   Vista only
  }
  _TOKEN_ELEVATION_TYPE = (TokenElevationTypePad0,
    TokenElevationTypeDefault, TokenElevationTypeFull,
    TokenElevationTypeLimited);
  {$EXTERNALSYM _TOKEN_ELEVATION_TYPE}

  {see _TOKEN_ELEVATION_TYPE}
  TTokenElevationType = _TOKEN_ELEVATION_TYPE;
  {see _TOKEN_ELEVATION_TYPE}
  PTokenElevationType = ^TTokenElevationType;

  {_TOKEN_ELEVATION contains the elevation status of a token on a vista system.}
  _TOKEN_ELEVATION = record
    TokenIsElevated: DWORD;
  end;
  {$EXTERNALSYM _TOKEN_ELEVATION}

  {see _TOKEN_ELEVATION}
  TTokenElevation = _TOKEN_ELEVATION;
  {see _TOKEN_ELEVATION}
  PTokenElevation = ^TTokenElevation;

  MANDATORY_LEVEL = (
    MandatoryLevelUntrusted, {= 0}
    MandatoryLevelLow,
    MandatoryLevelMedium,
    MandatoryLevelHigh,
    MandatoryLevelSystem,
    MandatoryLevelSecureProcess,
    MandatoryLevelCount);
  {$EXTERNALSYM MANDATORY_LEVEL}

  PMANDATORY_LEVEL = ^MANDATORY_LEVEL;

  TMandatoryLevel = MANDATORY_LEVEL;
  PMandatoryLevel = ^TMandatoryLevel;

const
  //A principal with a lower mandatory level than the object cannot write to the object.
  SYSTEM_MANDATORY_LABEL_NO_WRITE_UP = $1;
  {$EXTERNALSYM SYSTEM_MANDATORY_LABEL_NO_WRITE_UP}
  //A principal with a lower mandatory level than the object cannot read the object.
  SYSTEM_MANDATORY_LABEL_NO_READ_UP = $2;
  {$EXTERNALSYM SYSTEM_MANDATORY_LABEL_NO_READ_UP}
  //A principal with a lower mandatory level than the object cannot execute the object.
  SYSTEM_MANDATORY_LABEL_NO_EXECUTE_UP = $4;
  {$EXTERNALSYM SYSTEM_MANDATORY_LABEL_NO_EXECUTE_UP}

type
  //http://msdn2.microsoft.com/en-us/library/aa965848.aspx
  _SYSTEM_MANDATORY_LABEL_ACE = record
    Header : ACE_HEADER;
    Mask : ACCESS_MASK;
    SidStart : DWORD;
  end;
  {$EXTERNALSYM _SYSTEM_MANDATORY_LABEL_ACE}

  SYSTEM_MANDATORY_LABEL_ACE = _SYSTEM_MANDATORY_LABEL_ACE;
  PSYSTEM_MANDATORY_LABEL_ACE = ^_SYSTEM_MANDATORY_LABEL_ACE;

  TSystemMandatoryLabelAce = _SYSTEM_MANDATORY_LABEL_ACE;
  PSystemMandatoryLabelAce = ^TSystemMandatoryLabelAce;

const
  //No mandatory integrity policy is enforced for the token.
  TOKEN_MANDATORY_POLICY_OFF = $0;
  {$EXTERNALSYM TOKEN_MANDATORY_POLICY_OFF}
  //A process associated with the token cannot write to objects that have a greater mandatory integrity level.
  TOKEN_MANDATORY_POLICY_NO_WRITE_UP = $1;
  {$EXTERNALSYM TOKEN_MANDATORY_POLICY_NO_WRITE_UP}
  //A process created with the token has an integrity level that is the lesser of the parent-process integrity level and the executable-file integrity level.
  TOKEN_MANDATORY_POLICY_NEW_PROCESS_MIN = $2;
  {$EXTERNALSYM TOKEN_MANDATORY_POLICY_NEW_PROCESS_MIN}
  //A combination of TOKEN_MANDATORY_POLICY_NO_WRITE_UP and TOKEN_MANDATORY_POLICY_NEW_PROCESS_MIN
  TOKEN_MANDATORY_POLICY_VALID_MASK = $3;
  {$EXTERNALSYM TOKEN_MANDATORY_POLICY_VALID_MASK}

type
  //http://msdn2.microsoft.com/en-us/library/bb394728.aspx
  _TOKEN_MANDATORY_POLICY = record
    Policy : DWORD;
  end;
  {$EXTERNALSYM _TOKEN_MANDATORY_POLICY}

  TOKEN_MANDATORY_POLICY = _TOKEN_MANDATORY_POLICY;
  PTOKEN_MANDATORY_POLICY = ^TOKEN_MANDATORY_POLICY;

  TTokenMandatoryPolicy = _TOKEN_MANDATORY_POLICY;
  PTokenMandatoryPolicy = ^TTokenMandatoryPolicy;

const
  {
  The SID_HASH_SIZE array dimension is defined in WinNT.h as 32.
  http://msdn2.microsoft.com/en-us/library/bb394725.aspx
  }
  SID_HASH_SIZE = 32;
  {$EXTERNALSYM SID_HASH_SIZE}

type
  SID_HASH_ENTRY = ULONG_PTR;
  {$EXTERNALSYM SID_HASH_ENTRY}

  TSidHashEntry = SID_HASH_ENTRY;

  //http://msdn2.microsoft.com/en-us/library/bb394725.aspx
  _SID_AND_ATTRIBUTES_HASH = record
    SidCount : DWORD;
    SidAttr : PSID_AND_ATTRIBUTES;
    Hash : array[0..SID_HASH_SIZE-1] of SID_HASH_ENTRY;
  end;
  {$EXTERNALSYM _SID_AND_ATTRIBUTES_HASH}


  SID_AND_ATTRIBUTES_HASH = _SID_AND_ATTRIBUTES_HASH;
  PSID_AND_ATTRIBUTES_HASH = ^SID_AND_ATTRIBUTES_HASH;

  TSidAndAttributesHash = _SID_AND_ATTRIBUTES_HASH;
  PSidAndAttributesHash = ^TSidAndAttributesHash;



//http://msdn2.microsoft.com/en-us/library/bb394726.aspx
  _TOKEN_ACCESS_INFORMATION = record
    SidHash: PSID_AND_ATTRIBUTES_HASH;
    RestrictedSidHash : PSID_AND_ATTRIBUTES_HASH;
    Privileges : PTOKEN_PRIVILEGES;
    AuthenticationId : LUID;
    TokenType : TOKEN_TYPE;
    ImpersonationLevel : SECURITY_IMPERSONATION_LEVEL;
    MandatoryPolicy : TOKEN_MANDATORY_POLICY;
    Flags : DWORD;
  end;
  {$EXTERNALSYM _TOKEN_ACCESS_INFORMATION}

  TOKEN_ACCESS_INFORMATION = _TOKEN_ACCESS_INFORMATION;
  PTOKEN_ACCESS_INFORMATION = ^TOKEN_ACCESS_INFORMATION;

  TTokenAccessInformation = _TOKEN_ACCESS_INFORMATION;
  PTokenAccessInformation = ^TTokenAccessInformation;

  //http://msdn2.microsoft.com/en-us/library/bb530719.aspx
  _TOKEN_LINKED_TOKEN = record
    LinkedToken : HANDLE;
  end;
  {$EXTERNALSYM _TOKEN_LINKED_TOKEN}

  TOKEN_LINKED_TOKEN = _TOKEN_LINKED_TOKEN;
  PTOKEN_LINKED_TOKEN = ^TOKEN_LINKED_TOKEN;

  TTokenLinkedToken = _TOKEN_LINKED_TOKEN;
  PTokenLinkedToken = ^TTokenLinkedToken;


  _TOKEN_MANDATORY_LABEL = record
    Label_ : SID_AND_ATTRIBUTES;
  end;
  {$EXTERNALSYM _TOKEN_MANDATORY_LABEL}

  TOKEN_MANDATORY_LABEL = _TOKEN_MANDATORY_LABEL;
  PTOKEN_MANDATORY_LABEL = ^TOKEN_MANDATORY_LABEL;

  TTokenMandatoryLabel = _TOKEN_MANDATORY_LABEL;
  PTokenMandatoryLabel = ^TTokenMandatoryLabel;

const
  LowIL = 'S-1-16-4096';
  {$EXTERNALSYM LowIL}
  MediumIL = 'S-1-16-8192';
  {$EXTERNALSYM MediumIL}
  HighIL = 'S-1-16-12288';
  {$EXTERNALSYM HighIL}
  SystemIL = 'S-1-16-16384';
  {$EXTERNALSYM SystemIL}
  ProtectedProcessIL = 'S-1-16-20480';
  {$EXTERNALSYM ProtectedProcessIL}


{$IFDEF WINVISTA_UP}
  function AddMandatoryAce(pAcl: PACL; dwAceRevision, AceFlags, MandatoryPolicy: DWORD;
    pLabelSid: PSID): BOOL; stdcall;
  {$EXTERNALSYM AddMandatoryAce}
  {$EXTERNALSYM AddMandatoryAce}
{$ENDIF WINVISTA_UP}

{$ENDIF JWA_IMPLEMENTATIONSECTION}

{$IFNDEF JWA_OMIT_SECTIONS}
implementation
uses JwaWinDLLNames;
{$ENDIF JWA_OMIT_SECTIONS}

{$IFNDEF JWA_INTERFACESECTION}


function WT_SET_MAX_THREADPOOL_THREADS(var Flags: DWORD; Limit: DWORD): DWORD;
begin
  Flags := Flags or (Limit shl 16);
  Result := Flags;
end;


function VALID_IMPERSONATION_LEVEL(L: TSecurityImpersonationLevel): BOOL;
begin
  Result := (L >= SECURITY_MIN_IMPERSONATION_LEVEL) and (L <= SECURITY_MAX_IMPERSONATION_LEVEL);
end;

{
function VALID_TOKEN_AUDIT_POLICY_ELEMENT(P: TOKEN_AUDIT_POLICY_ELEMENT): BOOL;
begin
  Result := ((P.PolicyMask and (not VALID_AUDIT_POLICY_BITS) = 0) and (P.Category <= AuditEventMaxType);
// ((((P).PolicyMask & ~VALID_AUDIT_POLICY_BITS) == 0) && \
//                                             ((P).Category <= AuditEventMaxType))
end;
}

function PER_USER_AUDITING_POLICY_SIZE(p: PTOKEN_AUDIT_POLICY): DWORD;
begin
  Result := SizeOf(TOKEN_AUDIT_POLICY);
  if p^.PolicyCount > ANYSIZE_ARRAY then
    Result := Result + SizeOf(TOKEN_AUDIT_POLICY_ELEMENT) * (P^.PolicyCount - ANYSIZE_ARRAY);
//  ( sizeof(TOKEN_AUDIT_POLICY) + (((p)->PolicyCount > ANYSIZE_ARRAY) ? (sizeof(TOKEN_AUDIT_POLICY_ELEMENT) * ((p)->PolicyCount - ANYSIZE_ARRAY)) : 0) )
end;

function PER_USER_AUDITING_POLICY_SIZE_BY_COUNT(C: DWORD): DWORD;
begin
  Result := SizeOf(TOKEN_AUDIT_POLICY);
  if C > ANYSIZE_ARRAY then
    Result := Result + SizeOf(TOKEN_AUDIT_POLICY_ELEMENT) * (C - ANYSIZE_ARRAY);
//    ( sizeof(TOKEN_AUDIT_POLICY) + (((C) > ANYSIZE_ARRAY) ? (sizeof(TOKEN_AUDIT_POLICY_ELEMENT) * ((C) - ANYSIZE_ARRAY)) : 0) )
end;


{$IFNDEF JWA_INCLUDEMODE}

function NtCurrentTeb: PNT_TIB;
asm
{$ifdef cpu386}
        MOV     EAX, FS:[024]   // was zero
{$endif cpu386}
{$ifdef cpux86_64}
        movq     RAX, GS:[48]
{$endif cpux86_64}
end;
{$ENDIF JWA_INCLUDEMODE}

function GetFiberData: PVOID;
asm
{$ifdef cpu386}
        MOV     EAX, FS:[$1016]
        MOV     EAX, [EAX]
{$endif cpu386}
{$ifdef cpux86_64}
        MOV     RAX, GS:[32]
        MOV     RAX, [RAX]
{$endif cpux86_64}
end;

function GetCurrentFiber: PVOID;
asm
{$ifdef cpu386}
        MOV     EAX, FS:[$1016]
{$endif cpu386}
{$ifdef cpux86_64}
        MOV     RAX, GS:[32]
{$endif cpux86_64}
end;

{$IFNDEF JWA_INCLUDEMODE}

function Int32x32To64(a, b: LONG): LONGLONG;
begin
  Result := Int64(a) * Int64(b);
end;

function UInt32x32To64(a, b: DWORD): ULONGLONG;
begin
  Result := ULONGLONG(a) * ULONGLONG(b);
end;

{$ENDIF JWA_INCLUDEMODE}

function MAKELANGID(PrimaryLang, SubLang: USHORT): WORD;
begin
  Result := (SubLang shl 10) or PrimaryLang;
end;

function PRIMARYLANGID(LangId: WORD): WORD;
begin
  Result := LangId and $3FF;
end;

function SUBLANGID(LangId: WORD): WORD;
begin
  Result := LangId shr 10;
end;

function MAKELCID(LangId, SortId: WORD): DWORD;
begin
  Result := (DWORD(SortId) shl 16) or DWORD(LangId);
end;

function MAKESORTLCID(LangId, SortId, SortVersion: WORD): DWORD;
begin
  Result := MAKELCID(LangId, SortId) or (SortVersion shl 20);
end;

function LANGIDFROMLCID(LocaleId: LCID): WORD;
begin
  Result := WORD(LocaleId);
end;

function SORTIDFROMLCID(LocaleId: LCID): WORD;
begin
  Result := WORD((DWORD(LocaleId) shr 16) and $F);
end;

function SORTVERSIONFROMLCID(LocaleId: LCID): WORD;
begin
  Result := WORD((DWORD(LocaleId) shr 20) and $F);
end;

function LANG_SYSTEM_DEFAULT: WORD;
begin
  Result := MAKELANGID(LANG_NEUTRAL, SUBLANG_SYS_DEFAULT);
end;

function LANG_USER_DEFAULT: WORD;
begin
  Result := MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT);
end;

function LOCALE_SYSTEM_DEFAULT: DWORD;
begin
  Result := MAKELCID(LANG_SYSTEM_DEFAULT, SORT_DEFAULT);
end;

function LOCALE_USER_DEFAULT: DWORD;
begin
  Result := MAKELCID(LANG_USER_DEFAULT, SORT_DEFAULT);
end;

function LOCALE_CUSTOM_DEFAULT: DWORD;
begin
  Result := MAKELCID(MAKELANGID(LANG_NEUTRAL, SUBLANG_CUSTOM_DEFAULT), SORT_DEFAULT);
end;

function LOCALE_CUSTOM_UNSPECIFIED: DWORD;
begin
  Result := MAKELCID(MAKELANGID(LANG_NEUTRAL, SUBLANG_CUSTOM_UNSPECIFIED), SORT_DEFAULT);
end;

function LOCALE_CUSTOM_UI_DEFAULT: DWORD;
begin
  Result := MAKELCID(MAKELANGID(LANG_NEUTRAL, SUBLANG_UI_CUSTOM_DEFAULT), SORT_DEFAULT);
end;

function LOCALE_NEUTRAL: DWORD;
begin
  Result := MAKELCID(MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), SORT_DEFAULT);
end;

function LOCALE_INVARIANT: DWORD;
begin
  Result := MAKELCID(MAKELANGID(LANG_INVARIANT, SUBLANG_NEUTRAL), SORT_DEFAULT);
end;

function IsReparseTagMicrosoft(Tag: ULONG): Boolean;
begin
  Result := (Tag and ULONG($80000000)) <> 0;
end;

function IsReparseTagHighLatency(Tag: ULONG): Boolean;
begin
  Result := (Tag and ULONG($40000000)) <> 0;
end;

function IsReparseTagNameSurrogate(Tag: ULONG): Boolean;
begin
  Result := (Tag and ULONG($20000000)) <> 0;
end;

// IMAGE_FIRST_SECTION by Nico Bendlin - supplied by Markus Fuchs

function FieldOffset(const Struc; const Field): DWORD_PTR;
begin
//64bit Warning: Converting a pointer to Cardinal may conflict with 64bit
  Result := DWORD_PTR(@Field) - DWORD_PTR(@Struc);
end;

function IMAGE_FIRST_SECTION(NtHeader: PImageNtHeaders): PImageSectionHeader;
begin
//64bit Warning: Converting a pointer to Cardinal may conflict with 64bit
  Result := PImageSectionHeader(DWORD_PTR(NtHeader) +
      FieldOffset(NtHeader^, NtHeader^.OptionalHeader) +
      NtHeader^.FileHeader.SizeOfOptionalHeader);
end;

function BTYPE(x: DWORD): DWORD;
begin
  Result := x and N_BTMASK;
end;

function ISPTR(x: DWORD): Boolean;
begin
  Result := (x and N_TMASK) = (IMAGE_SYM_DTYPE_POINTER shl N_BTSHFT);
end;

function ISFCN(x: DWORD): Boolean;
begin
  Result := (x and N_TMASK) = (IMAGE_SYM_DTYPE_FUNCTION shl N_BTSHFT);
end;

function ISARY(x: DWORD): Boolean;
begin
  Result := (x and N_TMASK) = (IMAGE_SYM_DTYPE_ARRAY shl N_BTSHFT);
end;

function ISTAG(x: DWORD): Boolean;
begin
  Result := (x = IMAGE_SYM_CLASS_STRUCT_TAG) or (x = IMAGE_SYM_CLASS_UNION_TAG) or
    (x = IMAGE_SYM_CLASS_ENUM_TAG);
end;

function IMAGE_ORDINAL64(Ordinal: ULONGLONG): ULONGLONG;
begin
  Result := (Ordinal and $ffff);
end;

function IMAGE_ORDINAL32(Ordinal: DWORD): DWORD;
begin
  Result := (Ordinal and $ffff);
end;

function IMAGE_ORDINAL(Ordinal: DWORD): DWORD;
begin
  Result := (Ordinal and $ffff);
end;

function IMAGE_SNAP_BY_ORDINAL64(Ordinal: ULONGLONG): Boolean;
begin
  Result := ((Ordinal and IMAGE_ORDINAL_FLAG64) <> 0);
end;

function IMAGE_SNAP_BY_ORDINAL32(Ordinal: DWORD): Boolean;
begin
  Result := ((Ordinal and IMAGE_ORDINAL_FLAG32) <> 0);
end;

function IMAGE_SNAP_BY_ORDINAL(Ordinal: DWORD): Boolean;
begin
  Result := ((Ordinal and IMAGE_ORDINAL_FLAG32) <> 0);
end;

function HEAP_MAKE_TAG_FLAGS(b, o: DWORD): DWORD;
begin
  Result := b + (o shl 18);
end;

procedure VER_SET_CONDITION(var Mask: DWORDLONG; TypeBitmask, ConditionMask: ULONG);
begin
  Mask := VerSetConditionMask(Mask, TypeBitmask, ConditionMask);
end;

{$IFDEF DYNAMIC_LINK}

{$IFDEF WINVISTA_UP}
var
  _AddMandatoryAce: Pointer;

function AddMandatoryAce(pAcl: PACL; dwAceRevision, AceFlags, MandatoryPolicy: DWORD;
    pLabelSid: PSID): BOOL;
begin
  GetProcedureAddress(_AddMandatoryAce, advapi32, 'AddMandatoryAce');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_AddMandatoryAce]
  end;
end;
{$ENDIF WINVISTA_UP}

var
  _RtlCaptureContext: Pointer;

procedure RtlCaptureContext;
begin
  GetProcedureAddress(_RtlCaptureContext, ntdll, 'RtlCaptureContext');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RtlCaptureContext]
  end;
end;

var
  _RtlCompareMemory: Pointer;

function RtlCompareMemory;
begin
  GetProcedureAddress(_RtlCompareMemory, ntdll, 'RtlCompareMemory');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RtlCompareMemory]
  end;
end;

var
  _VerSetConditionMask: Pointer;

function VerSetConditionMask;
begin
  GetProcedureAddress(_VerSetConditionMask, kernel32, 'VerSetConditionMask');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_VerSetConditionMask]
  end;
end;


var
  _RtlInitializeSListHead: Pointer;

procedure RtlInitializeSListHead;
begin
  GetProcedureAddress(_RtlInitializeSListHead, ntdll, 'RtlInitializeSListHead');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RtlInitializeSListHead]
  end;
end;


var
  _RtlFirstEntrySList: Pointer;

function RtlFirstEntrySList;
begin
  GetProcedureAddress(_RtlFirstEntrySList, ntdll, 'RtlFirstEntrySList');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RtlFirstEntrySList]
  end;
end;

var
  _RtlInterlockedPopEntrySList: Pointer;

function RtlInterlockedPopEntrySList;
begin
  GetProcedureAddress(_RtlInterlockedPopEntrySList, ntdll, 'RtlInterlockedPopEntrySList');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RtlInterlockedPopEntrySList]
  end;
end;

{$IFNDEF JWA_INCLUDEMODE}
var
  _RtlInterlockedPushEntrySList: Pointer;

function RtlInterlockedPushEntrySList;
begin
  GetProcedureAddress(_RtlInterlockedPushEntrySList, ntdll, 'RtlInterlockedPushEntrySList');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RtlInterlockedPushEntrySList]
  end;
end;
{$ENDIF JWA_INCLUDEMODE}

var
  _RtlInterlockedFlushSList: Pointer;

function RtlInterlockedFlushSList;
begin
  GetProcedureAddress(_RtlInterlockedFlushSList, ntdll, 'RtlInterlockedFlushSList');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RtlInterlockedFlushSList]
  end;
end;

{$IFNDEF JWA_INCLUDEMODE}
var
  _RtlQueryDepthSList: Pointer;

function RtlQueryDepthSList;
begin
  GetProcedureAddress(_RtlQueryDepthSList, ntdll, 'RtlQueryDepthSList');
  asm
        MOV     ESP, EBP
        POP     EBP
        JMP     [_RtlQueryDepthSList]
  end;
end;
{$ENDIF JWA_INCLUDEMODE}

{$ELSE}

procedure RtlCaptureContext; external ntdll {$IFDEF DELAYED_LOADING}delayed{$ENDIF} name 'RtlCaptureContext';
function RtlCompareMemory; external ntdll {$IFDEF DELAYED_LOADING}delayed{$ENDIF} name 'RtlCompareMemory';
function VerSetConditionMask; external kernel32 {$IFDEF DELAYED_LOADING}delayed{$ENDIF} name 'VerSetConditionMask';

procedure RtlInitializeSListHead; external ntdll {$IFDEF DELAYED_LOADING}delayed{$ENDIF} name 'RtlInitializeSListHead';

function RtlFirstEntrySList; external ntdll {$IFDEF DELAYED_LOADING}delayed{$ENDIF} name 'RtlFirstEntrySList';
function RtlInterlockedPopEntrySList; external ntdll {$IFDEF DELAYED_LOADING}delayed{$ENDIF} name 'RtlInterlockedPopEntrySList';
{$IFNDEF JWA_INCLUDEMODE}
function RtlInterlockedPushEntrySList; external ntdll {$IFDEF DELAYED_LOADING}delayed{$ENDIF} name 'RtlInterlockedPushEntrySList';
{$ENDIF JWA_INCLUDEMODE}

function RtlInterlockedFlushSList; external ntdll {$IFDEF DELAYED_LOADING}delayed{$ENDIF} name 'RtlInterlockedFlushSList';
{$IFNDEF JWA_INCLUDEMODE}
function RtlQueryDepthSList; external ntdll {$IFDEF DELAYED_LOADING}delayed{$ENDIF} name 'RtlQueryDepthSList';
{$ENDIF JWA_INCLUDEMODE}

{$IFDEF WINVISTA_UP}
function AddMandatoryAce(pAcl: PACL; dwAceRevision, AceFlags, MandatoryPolicy: DWORD;
    pLabelSid: PSID): BOOL; stdcall; external advapi32 name 'AddMandatoryAce';
{$ENDIF WINVISTA_UP}

{$ENDIF DYNAMIC_LINK}

{$ENDIF JWA_INTERFACESECTION}

{$IFNDEF JWA_OMIT_SECTIONS}
end.
{$ENDIF JWA_OMIT_SECTIONS}
