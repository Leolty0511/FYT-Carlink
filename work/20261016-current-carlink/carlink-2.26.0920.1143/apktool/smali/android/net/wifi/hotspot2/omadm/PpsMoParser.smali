.class public final Landroid/net/wifi/hotspot2/omadm/PpsMoParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;,
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;,
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;,
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
    }
.end annotation


# static fields
.field private static final NODE_AAA_SERVER_TRUST_ROOT:Ljava/lang/String; = "AAAServerTrustRoot"

.field private static final NODE_ABLE_TO_SHARE:Ljava/lang/String; = "AbleToShare"

.field private static final NODE_CERTIFICATE_TYPE:Ljava/lang/String; = "CertificateType"

.field private static final NODE_CERT_SHA256_FINGERPRINT:Ljava/lang/String; = "CertSHA256Fingerprint"

.field private static final NODE_CERT_URL:Ljava/lang/String; = "CertURL"

.field private static final NODE_CHECK_AAA_SERVER_CERT_STATUS:Ljava/lang/String; = "CheckAAAServerCertStatus"

.field private static final NODE_COUNTRY:Ljava/lang/String; = "Country"

.field private static final NODE_CREATION_DATE:Ljava/lang/String; = "CreationDate"

.field private static final NODE_CREDENTIAL:Ljava/lang/String; = "Credential"

.field private static final NODE_CREDENTIAL_PRIORITY:Ljava/lang/String; = "CredentialPriority"

.field private static final NODE_DATA_LIMIT:Ljava/lang/String; = "DataLimit"

.field private static final NODE_DIGITAL_CERTIFICATE:Ljava/lang/String; = "DigitalCertificate"

.field private static final NODE_DOWNLINK_BANDWIDTH:Ljava/lang/String; = "DLBandwidth"

.field private static final NODE_EAP_METHOD:Ljava/lang/String; = "EAPMethod"

.field private static final NODE_EAP_TYPE:Ljava/lang/String; = "EAPType"

.field private static final NODE_EXPIRATION_DATE:Ljava/lang/String; = "ExpirationDate"

.field private static final NODE_EXTENSION:Ljava/lang/String; = "Extension"

.field private static final NODE_FQDN:Ljava/lang/String; = "FQDN"

.field private static final NODE_FQDN_MATCH:Ljava/lang/String; = "FQDN_Match"

.field private static final NODE_FRIENDLY_NAME:Ljava/lang/String; = "FriendlyName"

.field private static final NODE_HESSID:Ljava/lang/String; = "HESSID"

.field private static final NODE_HOMESP:Ljava/lang/String; = "HomeSP"

.field private static final NODE_HOME_OI:Ljava/lang/String; = "HomeOI"

.field private static final NODE_HOME_OI_LIST:Ljava/lang/String; = "HomeOIList"

.field private static final NODE_HOME_OI_REQUIRED:Ljava/lang/String; = "HomeOIRequired"

.field private static final NODE_ICON_URL:Ljava/lang/String; = "IconURL"

.field private static final NODE_INNER_EAP_TYPE:Ljava/lang/String; = "InnerEAPType"

.field private static final NODE_INNER_METHOD:Ljava/lang/String; = "InnerMethod"

.field private static final NODE_INNER_VENDOR_ID:Ljava/lang/String; = "InnerVendorID"

.field private static final NODE_INNER_VENDOR_TYPE:Ljava/lang/String; = "InnerVendorType"

.field private static final NODE_IP_PROTOCOL:Ljava/lang/String; = "IPProtocol"

.field private static final NODE_MACHINE_MANAGED:Ljava/lang/String; = "MachineManaged"

.field private static final NODE_MAXIMUM_BSS_LOAD_VALUE:Ljava/lang/String; = "MaximumBSSLoadValue"

.field private static final NODE_MIN_BACKHAUL_THRESHOLD:Ljava/lang/String; = "MinBackhaulThreshold"

.field private static final NODE_NETWORK_ID:Ljava/lang/String; = "NetworkID"

.field private static final NODE_NETWORK_TYPE:Ljava/lang/String; = "NetworkType"

.field private static final NODE_OTHER:Ljava/lang/String; = "Other"

.field private static final NODE_OTHER_HOME_PARTNERS:Ljava/lang/String; = "OtherHomePartners"

.field private static final NODE_PASSWORD:Ljava/lang/String; = "Password"

.field private static final NODE_PER_PROVIDER_SUBSCRIPTION:Ljava/lang/String; = "PerProviderSubscription"

.field private static final NODE_POLICY:Ljava/lang/String; = "Policy"

.field private static final NODE_POLICY_UPDATE:Ljava/lang/String; = "PolicyUpdate"

.field private static final NODE_PORT_NUMBER:Ljava/lang/String; = "PortNumber"

.field private static final NODE_PREFERRED_ROAMING_PARTNER_LIST:Ljava/lang/String; = "PreferredRoamingPartnerList"

.field private static final NODE_PRIORITY:Ljava/lang/String; = "Priority"

.field private static final NODE_REALM:Ljava/lang/String; = "Realm"

.field private static final NODE_REQUIRED_PROTO_PORT_TUPLE:Ljava/lang/String; = "RequiredProtoPortTuple"

.field private static final NODE_RESTRICTION:Ljava/lang/String; = "Restriction"

.field private static final NODE_ROAMING_CONSORTIUM_OI:Ljava/lang/String; = "RoamingConsortiumOI"

.field private static final NODE_SIM:Ljava/lang/String; = "SIM"

.field private static final NODE_SIM_IMSI:Ljava/lang/String; = "IMSI"

.field private static final NODE_SOFT_TOKEN_APP:Ljava/lang/String; = "SoftTokenApp"

.field private static final NODE_SP_EXCLUSION_LIST:Ljava/lang/String; = "SPExclusionList"

.field private static final NODE_SSID:Ljava/lang/String; = "SSID"

.field private static final NODE_START_DATE:Ljava/lang/String; = "StartDate"

.field private static final NODE_SUBSCRIPTION_PARAMETER:Ljava/lang/String; = "SubscriptionParameter"

.field private static final NODE_SUBSCRIPTION_UPDATE:Ljava/lang/String; = "SubscriptionUpdate"

.field private static final NODE_TIME_LIMIT:Ljava/lang/String; = "TimeLimit"

.field private static final NODE_TRUST_ROOT:Ljava/lang/String; = "TrustRoot"

.field private static final NODE_TYPE_OF_SUBSCRIPTION:Ljava/lang/String; = "TypeOfSubscription"

.field private static final NODE_UPDATE_IDENTIFIER:Ljava/lang/String; = "UpdateIdentifier"

.field private static final NODE_UPDATE_INTERVAL:Ljava/lang/String; = "UpdateInterval"

.field private static final NODE_UPDATE_METHOD:Ljava/lang/String; = "UpdateMethod"

.field private static final NODE_UPLINK_BANDWIDTH:Ljava/lang/String; = "ULBandwidth"

.field private static final NODE_URI:Ljava/lang/String; = "URI"

.field private static final NODE_USAGE_LIMITS:Ljava/lang/String; = "UsageLimits"

.field private static final NODE_USAGE_TIME_PERIOD:Ljava/lang/String; = "UsageTimePeriod"

.field private static final NODE_USERNAME:Ljava/lang/String; = "Username"

.field private static final NODE_USERNAME_PASSWORD:Ljava/lang/String; = "UsernamePassword"

.field private static final NODE_VENDOR_ID:Ljava/lang/String; = "VendorId"

.field private static final NODE_VENDOR_TYPE:Ljava/lang/String; = "VendorType"

.field private static final PPS_MO_URN:Ljava/lang/String; = "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

.field private static final TAG:Ljava/lang/String; = "PpsMoParser"

.field private static final TAG_DDF_NAME:Ljava/lang/String; = "DDFName"

.field private static final TAG_MANAGEMENT_TREE:Ljava/lang/String; = "MgmtTree"

.field private static final TAG_NODE:Ljava/lang/String; = "Node"

.field private static final TAG_NODE_NAME:Ljava/lang/String; = "NodeName"

.field private static final TAG_RT_PROPERTIES:Ljava/lang/String; = "RTProperties"

.field private static final TAG_TYPE:Ljava/lang/String; = "Type"

.field private static final TAG_VALUE:Ljava/lang/String; = "Value"

.field private static final TAG_VER_DTD:Ljava/lang/String; = "VerDTD"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildPpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v2, 0x0

    .line 20
    move-object v3, v2

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_6

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string v6, "NodeName"

    .line 38
    .line 39
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 53
    .line 54
    const-string v0, "Duplicate NodeName node"

    .line 55
    .line 56
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_1
    const-string v6, "Node"

    .line 61
    .line 62
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->buildPpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_2

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v1, "Duplicate node: "

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_3
    const-string v6, "Value"

    .line 118
    .line 119
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_5

    .line 124
    .line 125
    if-nez v3, :cond_4

    .line 126
    .line 127
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    goto :goto_0

    .line 132
    :cond_4
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 133
    .line 134
    const-string v0, "Duplicate Value node"

    .line 135
    .line 136
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_5
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 141
    .line 142
    const-string v0, "Unknown tag: "

    .line 143
    .line 144
    invoke-static {v0, v5}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p0

    .line 152
    :cond_6
    if-eqz v2, :cond_c

    .line 153
    .line 154
    const-string p0, "Invalid node: "

    .line 155
    .line 156
    if-nez v3, :cond_8

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_7

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 166
    .line 167
    const-string v1, " missing both value and children"

    .line 168
    .line 169
    invoke-static {p0, v2, v1}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-direct {v0, p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw v0

    .line 177
    :cond_8
    :goto_1
    if-eqz v3, :cond_a

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-gtz v1, :cond_9

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_9
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 187
    .line 188
    const-string v1, " contained both value and children"

    .line 189
    .line 190
    invoke-static {p0, v2, v1}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-direct {v0, p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw v0

    .line 198
    :cond_a
    :goto_2
    if-eqz v3, :cond_b

    .line 199
    .line 200
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;

    .line 201
    .line 202
    invoke-direct {p0, v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-object p0

    .line 206
    :cond_b
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;

    .line 207
    .line 208
    invoke-direct {p0, v2, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 209
    .line 210
    .line 211
    return-object p0

    .line 212
    :cond_c
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 213
    .line 214
    const-string v0, "Invalid node: missing NodeName"

    .line 215
    .line 216
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p0
.end method

.method private static convertFromLongList(Ljava/util/List;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [Ljava/lang/Long;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, [Ljava/lang/Long;

    .line 12
    .line 13
    array-length v0, p0

    .line 14
    new-array v0, v0, [J

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    array-length v2, p0

    .line 18
    if-ge v1, v2, :cond_0

    .line 19
    .line 20
    aget-object v2, p0, v1

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    aput-wide v2, v0, v1

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-object v0
.end method

.method private static getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Cannot get value from a non-leaf node: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method private static parseAAAServerTrustRootList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseTrustRoot(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-object v0

    .line 45
    :cond_1
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 46
    .line 47
    const-string v0, "Leaf node not expected for AAAServerTrustRoot"

    .line 48
    .line 49
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method private static parseCertificateCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-string v3, "CertificateType"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    const-string v3, "CertSHA256Fingerprint"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHexString(Ljava/lang/String;)[B

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertSha256Fingerprint([B)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "Unknown node under DigitalCertificate: "

    .line 72
    .line 73
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_1
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertType(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    return-object v0

    .line 100
    :cond_3
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 101
    .line 102
    const-string v0, "Leaf node not expected for DigitalCertificate"

    .line 103
    .line 104
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method private static parseCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_7

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, -0x1

    .line 44
    sparse-switch v3, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :sswitch_0
    const-string v3, "CreationDate"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 v4, 0x6

    .line 58
    goto :goto_1

    .line 59
    :sswitch_1
    const-string v3, "CheckAAAServerCertStatus"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v4, 0x5

    .line 69
    goto :goto_1

    .line 70
    :sswitch_2
    const-string v3, "UsernamePassword"

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v4, 0x4

    .line 80
    goto :goto_1

    .line 81
    :sswitch_3
    const-string v3, "Realm"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/4 v4, 0x3

    .line 91
    goto :goto_1

    .line 92
    :sswitch_4
    const-string v3, "SIM"

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/4 v4, 0x2

    .line 102
    goto :goto_1

    .line 103
    :sswitch_5
    const-string v3, "DigitalCertificate"

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_5

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    const/4 v4, 0x1

    .line 113
    goto :goto_1

    .line 114
    :sswitch_6
    const-string v3, "ExpirationDate"

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_6

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    const/4 v4, 0x0

    .line 124
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 125
    .line 126
    .line 127
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v2, "Unknown node under Credential: "

    .line 132
    .line 133
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0

    .line 151
    :pswitch_0
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v1

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/pps/Credential;->setCreationTimeInMillis(J)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :pswitch_1
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setCheckAaaServerCertStatus(Z)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :pswitch_2
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :pswitch_3
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :pswitch_4
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSimCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :pswitch_5
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseCertificateCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :pswitch_6
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    .line 218
    .line 219
    .line 220
    move-result-wide v1

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/pps/Credential;->setExpirationTimeInMillis(J)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_7
    return-object v0

    .line 227
    :cond_8
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 228
    .line 229
    const-string v0, "Leaf node not expected for HomeSP"

    .line 230
    .line 231
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p0

    .line 235
    :sswitch_data_0
    .sparse-switch
        -0x639674e3 -> :sswitch_6
        -0x48058781 -> :sswitch_5
        0x140b7 -> :sswitch_4
        0x4b2ea6f -> :sswitch_3
        0x1d7eb5b1 -> :sswitch_2
        0x2681df32 -> :sswitch_1
        0x684c9f4d -> :sswitch_0
    .end sparse-switch

    .line 236
    .line 237
    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseDate(Ljava/lang/String;)J
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-wide v0

    .line 18
    :catch_0
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 19
    .line 20
    const-string v1, "Badly formatted time: "

    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method private static parseEAPMethod(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    const/4 v2, -0x1

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    sparse-switch v3, :sswitch_data_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :sswitch_0
    const-string v3, "InnerVendorID"

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const/4 v2, 0x6

    .line 56
    goto :goto_1

    .line 57
    :sswitch_1
    const-string v3, "InnerMethod"

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 v2, 0x5

    .line 67
    goto :goto_1

    .line 68
    :sswitch_2
    const-string v3, "InnerVendorType"

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/4 v2, 0x4

    .line 78
    goto :goto_1

    .line 79
    :sswitch_3
    const-string v3, "EAPType"

    .line 80
    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const/4 v2, 0x3

    .line 89
    goto :goto_1

    .line 90
    :sswitch_4
    const-string v3, "VendorType"

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const/4 v2, 0x2

    .line 100
    goto :goto_1

    .line 101
    :sswitch_5
    const-string v3, "InnerEAPType"

    .line 102
    .line 103
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_5

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    const/4 v2, 0x1

    .line 111
    goto :goto_1

    .line 112
    :sswitch_6
    const-string v3, "VendorId"

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_6

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    const/4 v2, 0x0

    .line 122
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 123
    .line 124
    .line 125
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 126
    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v1, "Unknown node under EAPMethod: "

    .line 130
    .line 131
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :pswitch_0
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :pswitch_1
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-virtual {p1, v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setEapType(I)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v2, "Ignore unsupported EAP method parameter: "

    .line 174
    .line 175
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v2, "PpsMoParser"

    .line 183
    .line 184
    invoke-static {v1, v0, v2}, Landroid/app/m;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_7
    return-void

    .line 190
    :cond_8
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 191
    .line 192
    const-string p1, "Leaf node not expected for EAPMethod"

    .line 193
    .line 194
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p0

    .line 198
    nop

    .line 199
    :sswitch_data_0
    .sparse-switch
        -0x7a1b1f5d -> :sswitch_6
        -0x65b65268 -> :sswitch_5
        -0x5fcb5f3e -> :sswitch_4
        -0x4a77ab72 -> :sswitch_3
        0x204d3378 -> :sswitch_2
        0x35b51ab7 -> :sswitch_1
        0x394ea8b9 -> :sswitch_0
    .end sparse-switch

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static parseHexString(Ljava/lang/String;)[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    div-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    new-array v1, v0, [B

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v0, :cond_0

    .line 19
    .line 20
    mul-int/lit8 v3, v2, 0x2

    .line 21
    .line 22
    add-int/lit8 v4, v3, 0x2

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/16 v4, 0x10

    .line 29
    .line 30
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    int-to-byte v3, v3

    .line 35
    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 41
    .line 42
    const-string v1, "Invalid hex string: "

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_0
    return-object v1

    .line 53
    :cond_1
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "Odd length hex string: "

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {v0, p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

.method private static parseHomeOIInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    move-object v1, v0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-string v4, "HomeOI"

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    const-string v1, "HomeOIRequired"

    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, "Unknown node under NetworkID instance: "

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_1
    :try_start_0
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/16 v3, 0x10

    .line 90
    .line 91
    invoke-static {v0, v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 96
    :catch_0
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v1, "Invalid HomeOI: "

    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :cond_2
    if-eqz v0, :cond_4

    .line 121
    .line 122
    if-eqz v1, :cond_3

    .line 123
    .line 124
    new-instance p0, Landroid/util/Pair;

    .line 125
    .line 126
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-object p0

    .line 130
    :cond_3
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 131
    .line 132
    const-string v0, "HomeOI instance missing required field"

    .line 133
    .line 134
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0

    .line 138
    :cond_4
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 139
    .line 140
    const-string v0, "HomeOI instance missing OI field"

    .line 141
    .line 142
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :cond_5
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 147
    .line 148
    const-string v0, "Leaf node not expected for HomeOI instance"

    .line 149
    .line 150
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p0
.end method

.method private static parseHomeOIList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 36
    .line 37
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHomeOIInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance p0, Landroid/util/Pair;

    .line 64
    .line 65
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_2
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 70
    .line 71
    const-string v0, "Leaf node not expected for HomeOIList"

    .line 72
    .line 73
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method private static parseHomeSP(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/HomeSp;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    new-instance v0, Landroid/net/wifi/hotspot2/pps/HomeSp;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_7

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, -0x1

    .line 44
    sparse-switch v3, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :sswitch_0
    const-string v3, "OtherHomePartners"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 v4, 0x6

    .line 58
    goto :goto_1

    .line 59
    :sswitch_1
    const-string v3, "FriendlyName"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v4, 0x5

    .line 69
    goto :goto_1

    .line 70
    :sswitch_2
    const-string v3, "RoamingConsortiumOI"

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v4, 0x4

    .line 80
    goto :goto_1

    .line 81
    :sswitch_3
    const-string v3, "FQDN"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/4 v4, 0x3

    .line 91
    goto :goto_1

    .line 92
    :sswitch_4
    const-string v3, "NetworkID"

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/4 v4, 0x2

    .line 102
    goto :goto_1

    .line 103
    :sswitch_5
    const-string v3, "IconURL"

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_5

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    const/4 v4, 0x1

    .line 113
    goto :goto_1

    .line 114
    :sswitch_6
    const-string v3, "HomeOIList"

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_6

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    const/4 v4, 0x0

    .line 124
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 125
    .line 126
    .line 127
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v2, "Unknown node under HomeSP: "

    .line 132
    .line 133
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0

    .line 151
    :pswitch_0
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseOtherHomePartners(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setOtherHomePartners([Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :pswitch_1
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :pswitch_2
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseRoamingConsortiumOI(Ljava/lang/String;)[J

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setRoamingConsortiumOis([J)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :pswitch_3
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :pswitch_4
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseNetworkIds(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setHomeNetworkIds(Ljava/util/Map;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :pswitch_5
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setIconUrl(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :pswitch_6
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHomeOIList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v2, Ljava/util/List;

    .line 216
    .line 217
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->convertFromLongList(Ljava/util/List;)[J

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAllOis([J)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v1, Ljava/util/List;

    .line 227
    .line 228
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->convertFromLongList(Ljava/util/List;)[J

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAnyOis([J)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :cond_7
    return-object v0

    .line 238
    :cond_8
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 239
    .line 240
    const-string v0, "Leaf node not expected for HomeSP"

    .line 241
    .line 242
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw p0

    .line 246
    nop

    .line 247
    :sswitch_data_0
    .sparse-switch
        -0x5cfee0a9 -> :sswitch_6
        -0x3b19d9ea -> :sswitch_5
        -0xd9a5057 -> :sswitch_4
        0x210a95 -> :sswitch_3
        0x205d7ed4 -> :sswitch_2
        0x2553ddf6 -> :sswitch_1
        0x749ec1ba -> :sswitch_0
    .end sparse-switch

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseInteger(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 7
    .line 8
    const-string v1, "Invalid integer value: "

    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v0, p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method private static parseLong(Ljava/lang/String;I)J
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-wide p0

    .line 6
    :catch_0
    new-instance p1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 7
    .line 8
    const-string v0, "Invalid long integer value: "

    .line 9
    .line 10
    invoke-static {v0, p0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {p1, p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method private static parseMinBackhaulThreshold(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 26
    .line 27
    invoke-static {v0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseMinBackhaulThresholdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void

    .line 32
    :cond_1
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 33
    .line 34
    const-string p1, "Leaf node not expected for MinBackhaulThreshold"

    .line 35
    .line 36
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method private static parseMinBackhaulThresholdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-wide/high16 v0, -0x8000000000000000L

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    move-object v4, v2

    .line 19
    move-wide v2, v0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_3

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    const/4 v8, -0x1

    .line 44
    sparse-switch v7, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :sswitch_0
    const-string v7, "DLBandwidth"

    .line 49
    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-nez v6, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 v8, 0x2

    .line 58
    goto :goto_1

    .line 59
    :sswitch_1
    const-string v7, "ULBandwidth"

    .line 60
    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v8, 0x1

    .line 69
    goto :goto_1

    .line 70
    :sswitch_2
    const-string v7, "NetworkType"

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v8, 0x0

    .line 80
    :goto_1
    const/16 v6, 0xa

    .line 81
    .line 82
    packed-switch v8, :pswitch_data_0

    .line 83
    .line 84
    .line 85
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 86
    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v0, "Unknown node under MinBackhaulThreshold instance "

    .line 90
    .line 91
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :pswitch_0
    invoke-static {v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    goto :goto_0

    .line 118
    :pswitch_1
    invoke-static {v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v2, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    goto :goto_0

    .line 127
    :pswitch_2
    invoke-static {v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    goto :goto_0

    .line 132
    :cond_3
    if-eqz v4, :cond_6

    .line 133
    .line 134
    const-string/jumbo p0, "home"

    .line 135
    .line 136
    .line 137
    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-eqz p0, :cond_4

    .line 142
    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeDownlinkBandwidth(J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeUplinkBandwidth(J)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_4
    const-string/jumbo p0, "roaming"

    .line 151
    .line 152
    .line 153
    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_5

    .line 158
    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingDownlinkBandwidth(J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingUplinkBandwidth(J)V

    .line 163
    .line 164
    .line 165
    :goto_2
    return-void

    .line 166
    :cond_5
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 167
    .line 168
    const-string p1, "Invalid network type: "

    .line 169
    .line 170
    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_6
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 179
    .line 180
    const-string p1, "Missing NetworkType field"

    .line 181
    .line 182
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p0

    .line 186
    :cond_7
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 187
    .line 188
    const-string p1, "Leaf node not expected for MinBackhaulThreshold instance"

    .line 189
    .line 190
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p0

    .line 194
    nop

    .line 195
    :sswitch_data_0
    .sparse-switch
        -0x1041c198 -> :sswitch_2
        -0x7fc3026 -> :sswitch_1
        0x14d3f109 -> :sswitch_0
    .end sparse-switch

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseMoText(Ljava/lang/String;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 7

    .line 1
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/XMLParser;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/wifi/hotspot2/omadm/XMLParser;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/net/wifi/hotspot2/omadm/XMLParser;->parse(Ljava/lang/String;)Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, "MgmtTree"

    .line 19
    .line 20
    const-string v3, "PpsMoParser"

    .line 21
    .line 22
    if-eq v0, v2, :cond_1

    .line 23
    .line 24
    const-string p0, "Root is not a MgmtTree"

    .line 25
    .line 26
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    move-object v0, v1

    .line 39
    move-object v2, v0

    .line 40
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_6

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const-string v6, "VerDTD"

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_4

    .line 66
    .line 67
    const-string v6, "Node"

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_2

    .line 74
    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v0, "Unknown node: "

    .line 78
    .line 79
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    return-object v1

    .line 97
    :cond_2
    if-eqz v0, :cond_3

    .line 98
    .line 99
    const-string p0, "Unexpected multiple Node element under MgmtTree"

    .line 100
    .line 101
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    return-object v1

    .line 105
    :cond_3
    :try_start_1
    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 106
    .line 107
    .line 108
    move-result-object v0
    :try_end_1
    .catch Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    return-object v1

    .line 119
    :cond_4
    if-eqz v2, :cond_5

    .line 120
    .line 121
    const-string p0, "Duplicate VerDTD element"

    .line 122
    .line 123
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    return-object v1

    .line 127
    :cond_5
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    goto :goto_0

    .line 132
    :cond_6
    return-object v0

    .line 133
    :catch_1
    return-object v1
.end method

.method private static parseNetworkIdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    move-object v1, v0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-string v4, "SSID"

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    const-string v1, "HESSID"

    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/16 v2, 0x10

    .line 57
    .line 58
    invoke-static {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "Unknown node under NetworkID instance: "

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_1
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    if-eqz v0, :cond_3

    .line 97
    .line 98
    new-instance p0, Landroid/util/Pair;

    .line 99
    .line 100
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_3
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 105
    .line 106
    const-string v0, "NetworkID instance missing SSID"

    .line 107
    .line 108
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_4
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 113
    .line 114
    const-string v0, "Leaf node not expected for NetworkID instance"

    .line 115
    .line 116
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0
.end method

.method private static parseNetworkIds(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseNetworkIdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-object v0

    .line 45
    :cond_1
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 46
    .line 47
    const-string v0, "Leaf node not expected for NetworkID"

    .line 48
    .line 49
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method private static parseOtherHomePartnerInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v2, "FQDN"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "Unknown node under OtherHomePartner instance: "

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_1
    if-eqz v0, :cond_2

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_2
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 76
    .line 77
    const-string v0, "OtherHomePartner instance missing FQDN field"

    .line 78
    .line 79
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_3
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 84
    .line 85
    const-string v0, "Leaf node not expected for OtherHomePartner instance"

    .line 86
    .line 87
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method private static parseOtherHomePartners(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseOtherHomePartnerInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    new-array p0, p0, [Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, [Ljava/lang/String;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_1
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 54
    .line 55
    const-string v0, "Leaf node not expected for OtherHomePartners"

    .line 56
    .line 57
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method private static parsePolicy(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_6

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, -0x1

    .line 44
    sparse-switch v3, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :sswitch_0
    const-string v3, "PreferredRoamingPartnerList"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 v4, 0x5

    .line 58
    goto :goto_1

    .line 59
    :sswitch_1
    const-string v3, "RequiredProtoPortTuple"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v4, 0x4

    .line 69
    goto :goto_1

    .line 70
    :sswitch_2
    const-string v3, "SPExclusionList"

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v4, 0x3

    .line 80
    goto :goto_1

    .line 81
    :sswitch_3
    const-string v3, "MaximumBSSLoadValue"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/4 v4, 0x2

    .line 91
    goto :goto_1

    .line 92
    :sswitch_4
    const-string v3, "MinBackhaulThreshold"

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/4 v4, 0x1

    .line 102
    goto :goto_1

    .line 103
    :sswitch_5
    const-string v3, "PolicyUpdate"

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_5

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    const/4 v4, 0x0

    .line 113
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 114
    .line 115
    .line 116
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v2, "Unknown node under Policy: "

    .line 121
    .line 122
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :pswitch_0
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePreferredRoamingPartnerList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setPreferredRoamingPartnerList(Ljava/util/List;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :pswitch_1
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseRequiredProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setRequiredProtoPortMap(Ljava/util/Map;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :pswitch_2
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSpExclusionList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setExcludedSsidList([Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :pswitch_3
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setMaximumBssLoadValue(I)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :pswitch_4
    invoke-static {v1, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseMinBackhaulThreshold(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :pswitch_5
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUpdateParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setPolicyUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_6
    return-object v0

    .line 194
    :cond_7
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 195
    .line 196
    const-string v0, "Leaf node not expected for Policy"

    .line 197
    .line 198
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p0

    .line 202
    nop

    .line 203
    :sswitch_data_0
    .sparse-switch
        -0x65fa0f45 -> :sswitch_5
        -0x10c3dc9e -> :sswitch_4
        -0x9f251d7 -> :sswitch_3
        0x22edf02f -> :sswitch_2
        0x2eb5845e -> :sswitch_1
        0x4fbd41ee -> :sswitch_0
    .end sparse-switch

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parsePpsInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_8

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, -0x1

    .line 44
    sparse-switch v3, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :sswitch_0
    const-string v3, "CredentialPriority"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    const/4 v4, 0x7

    .line 59
    goto :goto_1

    .line 60
    :sswitch_1
    const-string v3, "Extension"

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/4 v4, 0x6

    .line 70
    goto :goto_1

    .line 71
    :sswitch_2
    const-string v3, "Credential"

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/4 v4, 0x5

    .line 81
    goto :goto_1

    .line 82
    :sswitch_3
    const-string v3, "AAAServerTrustRoot"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_3

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const/4 v4, 0x4

    .line 92
    goto :goto_1

    .line 93
    :sswitch_4
    const-string v3, "SubscriptionUpdate"

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_4

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const/4 v4, 0x3

    .line 103
    goto :goto_1

    .line 104
    :sswitch_5
    const-string v3, "SubscriptionParameter"

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-nez v2, :cond_5

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    const/4 v4, 0x2

    .line 114
    goto :goto_1

    .line 115
    :sswitch_6
    const-string v3, "Policy"

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-nez v2, :cond_6

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    const/4 v4, 0x1

    .line 125
    goto :goto_1

    .line 126
    :sswitch_7
    const-string v3, "HomeSP"

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_7

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_7
    const/4 v4, 0x0

    .line 136
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 137
    .line 138
    .line 139
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 140
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v2, "Unknown node: "

    .line 144
    .line 145
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0

    .line 163
    :pswitch_0
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredentialPriority(I)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :pswitch_1
    const-string v1, "PpsMoParser"

    .line 177
    .line 178
    const-string v2, "Ignore Extension node for vendor specific information"

    .line 179
    .line 180
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :pswitch_2
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :pswitch_3
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseAAAServerTrustRootList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setTrustRootCertList(Ljava/util/Map;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :pswitch_4
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUpdateParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :pswitch_5
    invoke-static {v1, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSubscriptionParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :pswitch_6
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePolicy(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setPolicy(Landroid/net/wifi/hotspot2/pps/Policy;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :pswitch_7
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHomeSP(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/HomeSp;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_8
    return-object v0

    .line 236
    :cond_9
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 237
    .line 238
    const-string v0, "Leaf node not expected for PPS instance"

    .line 239
    .line 240
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw p0

    .line 244
    nop

    .line 245
    :sswitch_data_0
    .sparse-switch
        -0x7ed3d064 -> :sswitch_7
        -0x712d6eae -> :sswitch_6
        -0x61e4514 -> :sswitch_5
        0x9ad3066 -> :sswitch_4
        0x12bd88f6 -> :sswitch_3
        0x4e15c477 -> :sswitch_2
        0x52ef3c1f -> :sswitch_1
        0x78443b3b -> :sswitch_0
    .end sparse-switch

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parsePpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    move-object v2, v0

    .line 13
    move v3, v1

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_9

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    const/4 v6, -0x1

    .line 37
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    sparse-switch v7, :sswitch_data_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :sswitch_0
    const-string v7, "NodeName"

    .line 46
    .line 47
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 v6, 0x2

    .line 55
    goto :goto_1

    .line 56
    :sswitch_1
    const-string v7, "Node"

    .line 57
    .line 58
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v6, 0x1

    .line 66
    goto :goto_1

    .line 67
    :sswitch_2
    const-string v7, "RTProperties"

    .line 68
    .line 69
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v6, 0x0

    .line 77
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v1, "Unknown tag under PPS node: "

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :pswitch_0
    if-nez v2, :cond_4

    .line 105
    .line 106
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const-string v4, "PerProviderSubscription"

    .line 111
    .line 112
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_3

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 120
    .line 121
    const-string v0, "Unexpected NodeName: "

    .line 122
    .line 123
    invoke-static {v0, v2}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_4
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v1, "Duplicate NodeName: "

    .line 136
    .line 137
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :pswitch_1
    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->buildPpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    const-string v6, "UpdateIdentifier"

    .line 164
    .line 165
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_6

    .line 170
    .line 171
    if-ne v3, v1, :cond_5

    .line 172
    .line 173
    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_5
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 184
    .line 185
    const-string v0, "Multiple node for UpdateIdentifier"

    .line 186
    .line 187
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p0

    .line 191
    :cond_6
    if-nez v0, :cond_7

    .line 192
    .line 193
    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePpsInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_7
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 200
    .line 201
    const-string v0, "Multiple PPS instance"

    .line 202
    .line 203
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p0

    .line 207
    :pswitch_2
    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUrn(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    const-string/jumbo v5, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    .line 212
    .line 213
    .line 214
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-eqz v5, :cond_8

    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_8
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 223
    .line 224
    const-string v0, "Unknown URN: "

    .line 225
    .line 226
    invoke-static {v0, v4}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw p0

    .line 234
    :cond_9
    if-eqz v0, :cond_a

    .line 235
    .line 236
    if-eq v3, v1, :cond_a

    .line 237
    .line 238
    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUpdateIdentifier(I)V

    .line 239
    .line 240
    .line 241
    :cond_a
    return-object v0

    .line 242
    nop

    .line 243
    :sswitch_data_0
    .sparse-switch
        -0x6e6ef6eb -> :sswitch_2
        0x252222 -> :sswitch_1
        0x46c82fcd -> :sswitch_0
    .end sparse-switch

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parsePreferredRoamingPartner(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_6

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, 0x2

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x1

    .line 46
    const/4 v7, -0x1

    .line 47
    sparse-switch v3, :sswitch_data_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :sswitch_0
    const-string v3, "FQDN_Match"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    move v7, v4

    .line 61
    goto :goto_1

    .line 62
    :sswitch_1
    const-string v3, "Priority"

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move v7, v6

    .line 72
    goto :goto_1

    .line 73
    :sswitch_2
    const-string v3, "Country"

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v7, v5

    .line 83
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v2, "Unknown node under PreferredRoamingPartnerList instance "

    .line 91
    .line 92
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :pswitch_0
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v2, ","

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    array-length v3, v2

    .line 121
    const-string v7, "Invalid FQDN_Match: "

    .line 122
    .line 123
    if-ne v3, v4, :cond_5

    .line 124
    .line 125
    aget-object v3, v2, v5

    .line 126
    .line 127
    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdn(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    aget-object v3, v2, v6

    .line 131
    .line 132
    const-string v4, "exactMatch"

    .line 133
    .line 134
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_3

    .line 139
    .line 140
    invoke-virtual {v0, v6}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdnExactMatch(Z)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_3
    aget-object v2, v2, v6

    .line 145
    .line 146
    const-string/jumbo v3, "includeSubdomains"

    .line 147
    .line 148
    .line 149
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_4

    .line 154
    .line 155
    invoke-virtual {v0, v5}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdnExactMatch(Z)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_4
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 161
    .line 162
    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0

    .line 170
    :cond_5
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 171
    .line 172
    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p0

    .line 180
    :pswitch_1
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setPriority(I)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :pswitch_2
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setCountries(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_6
    return-object v0

    .line 203
    :cond_7
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 204
    .line 205
    const-string v0, "Leaf node not expected for PreferredRoamingPartner instance"

    .line 206
    .line 207
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p0

    .line 211
    :sswitch_data_0
    .sparse-switch
        -0x63b0108a -> :sswitch_2
        -0x419d223c -> :sswitch_1
        0x1239537b -> :sswitch_0
    .end sparse-switch

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parsePreferredRoamingPartnerList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePreferredRoamingPartner(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-object v0

    .line 41
    :cond_1
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 42
    .line 43
    const-string v0, "Leaf node not expected for PreferredRoamingPartnerList"

    .line 44
    .line 45
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method private static parseProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/high16 v0, -0x80000000

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string v5, "IPProtocol"

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    const-string v1, "PortNumber"

    .line 47
    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v1, "Unknown node under RequiredProtoPortTuple instance"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_1
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    if-eq v2, v0, :cond_4

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :cond_3
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 106
    .line 107
    const-string v0, "Missing PortNumber field"

    .line 108
    .line 109
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_4
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 114
    .line 115
    const-string v0, "Missing IPProtocol field"

    .line 116
    .line 117
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_5
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 122
    .line 123
    const-string v0, "Leaf node not expected for RequiredProtoPortTuple instance"

    .line 124
    .line 125
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0
.end method

.method private static parseRequiredProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-object v0

    .line 45
    :cond_1
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 46
    .line 47
    const-string v0, "Leaf node not expected for RequiredProtoPortTuple"

    .line 48
    .line 49
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method private static parseRoamingConsortiumOI(Ljava/lang/String;)[J
    .locals 4

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p0

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    aget-object v2, p0, v1

    .line 15
    .line 16
    const/16 v3, 0x10

    .line 17
    .line 18
    invoke-static {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    aput-wide v2, v0, v1

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object v0
.end method

.method private static parseSimCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-string v3, "EAPType"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    const-string v3, "IMSI"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setImsi(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "Unknown node under SIM: "

    .line 68
    .line 69
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_1
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    return-object v0

    .line 100
    :cond_3
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 101
    .line 102
    const-string v0, "Leaf node not expected for SIM"

    .line 103
    .line 104
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method private static parseSpExclusionInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v2, "SSID"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 49
    .line 50
    const-string v0, "Unknown node under SPExclusion instance"

    .line 51
    .line 52
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_1
    return-object v0

    .line 57
    :cond_2
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 58
    .line 59
    const-string v0, "Leaf node not expected for SPExclusion instance"

    .line 60
    .line 61
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method private static parseSpExclusionList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSpExclusionInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    new-array p0, p0, [Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, [Ljava/lang/String;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_1
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 54
    .line 55
    const-string v0, "Leaf node not expected for SPExclusionList"

    .line 56
    .line 57
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method private static parseSubscriptionParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, -0x1

    .line 39
    sparse-switch v2, :sswitch_data_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :sswitch_0
    const-string v2, "CreationDate"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const/4 v3, 0x3

    .line 53
    goto :goto_1

    .line 54
    :sswitch_1
    const-string v2, "TypeOfSubscription"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/4 v3, 0x2

    .line 64
    goto :goto_1

    .line 65
    :sswitch_2
    const-string v2, "ExpirationDate"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 v3, 0x1

    .line 75
    goto :goto_1

    .line 76
    :sswitch_3
    const-string v2, "UsageLimits"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    const/4 v3, 0x0

    .line 86
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 90
    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v1, "Unknown node under SubscriptionParameter"

    .line 94
    .line 95
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :pswitch_0
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionCreationTimeInMillis(J)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :pswitch_1
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionType(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :pswitch_2
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionExpirationTimeInMillis(J)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :pswitch_3
    invoke-static {v0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUsageLimits(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_4
    return-void

    .line 152
    :cond_5
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 153
    .line 154
    const-string p1, "Leaf node not expected for SubscriptionParameter"

    .line 155
    .line 156
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0

    .line 160
    nop

    .line 161
    :sswitch_data_0
    .sparse-switch
        -0x730b3f07 -> :sswitch_3
        -0x639674e3 -> :sswitch_2
        -0x62ae6572 -> :sswitch_1
        0x684c9f4d -> :sswitch_0
    .end sparse-switch

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseTrustRoot(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    move-object v1, v0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-string v4, "CertURL"

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    const-string v1, "CertSHA256Fingerprint"

    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHexString(Ljava/lang/String;)[B

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, "Unknown node under TrustRoot: "

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_1
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :cond_3
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 96
    .line 97
    const-string v0, "Leaf node not expected for TrustRoot"

    .line 98
    .line 99
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method private static parseUpdateParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_7

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    const/4 v3, -0x1

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    sparse-switch v4, :sswitch_data_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :sswitch_0
    const-string v4, "UsernamePassword"

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    const/4 v3, 0x6

    .line 61
    goto :goto_1

    .line 62
    :sswitch_1
    const-string v4, "UpdateInterval"

    .line 63
    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/4 v3, 0x5

    .line 72
    goto :goto_1

    .line 73
    :sswitch_2
    const-string v4, "Restriction"

    .line 74
    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/4 v3, 0x4

    .line 83
    goto :goto_1

    .line 84
    :sswitch_3
    const-string v4, "Other"

    .line 85
    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const/4 v3, 0x3

    .line 94
    goto :goto_1

    .line 95
    :sswitch_4
    const-string v4, "URI"

    .line 96
    .line 97
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    const/4 v3, 0x2

    .line 105
    goto :goto_1

    .line 106
    :sswitch_5
    const-string v4, "TrustRoot"

    .line 107
    .line 108
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_5

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    const/4 v3, 0x1

    .line 116
    goto :goto_1

    .line 117
    :sswitch_6
    const-string v4, "UpdateMethod"

    .line 118
    .line 119
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_6

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    const/4 v3, 0x0

    .line 127
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 128
    .line 129
    .line 130
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v2, "Unknown node under Update Parameters: "

    .line 135
    .line 136
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :pswitch_0
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUpdateUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v2, Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUsername(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v1, Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setBase64EncodedPassword(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :pswitch_1
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const/16 v2, 0xa

    .line 179
    .line 180
    invoke-static {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    .line 181
    .line 182
    .line 183
    move-result-wide v1

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateIntervalInMinutes(J)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :pswitch_2
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setRestriction(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v3, "Ignore unsupported paramter: "

    .line 201
    .line 202
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    const-string v3, "PpsMoParser"

    .line 210
    .line 211
    invoke-static {v2, v1, v3}, Landroid/app/m;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :pswitch_4
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setServerUri(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :pswitch_5
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseTrustRoot(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v2, Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertUrl(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v1, [B

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertSha256Fingerprint([B)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :pswitch_6
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateMethod(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_7
    return-object v0

    .line 255
    :cond_8
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 256
    .line 257
    const-string v0, "Leaf node not expected for Update Parameters"

    .line 258
    .line 259
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw p0

    .line 263
    :sswitch_data_0
    .sparse-switch
        -0x394f30d6 -> :sswitch_6
        -0x1f4598c6 -> :sswitch_5
        0x1494c -> :sswitch_4
        0x48f8ef0 -> :sswitch_3
        0x65dbbac -> :sswitch_2
        0x1a2474ce -> :sswitch_1
        0x1d7eb5b1 -> :sswitch_0
    .end sparse-switch

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseUpdateUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    move-object v1, v0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-string v4, "Username"

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    const-string v1, "Password"

    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v1, "Unknown node under UsernamePassword: "

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_1
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_3
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 92
    .line 93
    const-string v0, "Leaf node not expected for UsernamePassword"

    .line 94
    .line 95
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method private static parseUrn(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_4

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ne v2, v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "Type"

    .line 38
    .line 39
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "DDFName"

    .line 70
    .line 71
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_0
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "Unexpected tag for DDFName: "

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-direct {v0, p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_1
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 107
    .line 108
    const-string v0, "Expect DDFName node to have no child"

    .line 109
    .line 110
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :cond_2
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 115
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, "Unexpected tag for Type: "

    .line 119
    .line 120
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-direct {v0, p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_3
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 139
    .line 140
    const-string v0, "Expect Type node to only have one child"

    .line 141
    .line 142
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :cond_4
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 147
    .line 148
    const-string v0, "Expect RTPProperties node to only have one child"

    .line 149
    .line 150
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p0
.end method

.method private static parseUsageLimits(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, -0x1

    .line 39
    sparse-switch v2, :sswitch_data_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :sswitch_0
    const-string v2, "TimeLimit"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const/4 v3, 0x3

    .line 53
    goto :goto_1

    .line 54
    :sswitch_1
    const-string v2, "DataLimit"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/4 v3, 0x2

    .line 64
    goto :goto_1

    .line 65
    :sswitch_2
    const-string v2, "UsageTimePeriod"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 v3, 0x1

    .line 75
    goto :goto_1

    .line 76
    :sswitch_3
    const-string v2, "StartDate"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    const/4 v3, 0x0

    .line 86
    :goto_1
    const/16 v1, 0xa

    .line 87
    .line 88
    packed-switch v3, :pswitch_data_0

    .line 89
    .line 90
    .line 91
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 92
    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v1, "Unknown node under UsageLimits"

    .line 96
    .line 97
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :pswitch_0
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitTimeLimitInMinutes(J)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :pswitch_1
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitDataLimit(J)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :pswitch_2
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitUsageTimePeriodInMinutes(J)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :pswitch_3
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    .line 157
    .line 158
    .line 159
    move-result-wide v0

    .line 160
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitStartTimeInMillis(J)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_4
    return-void

    .line 166
    :cond_5
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 167
    .line 168
    const-string p1, "Leaf node not expected for UsageLimits"

    .line 169
    .line 170
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    nop

    .line 175
    :sswitch_data_0
    .sparse-switch
        -0x77fb8f0 -> :sswitch_3
        0x22fde34f -> :sswitch_2
        0x60b8c611 -> :sswitch_1
        0x7890e0ce -> :sswitch_0
    .end sparse-switch

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_6

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, -0x1

    .line 44
    sparse-switch v3, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :sswitch_0
    const-string v3, "EAPMethod"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 v4, 0x5

    .line 58
    goto :goto_1

    .line 59
    :sswitch_1
    const-string v3, "SoftTokenApp"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v4, 0x4

    .line 69
    goto :goto_1

    .line 70
    :sswitch_2
    const-string v3, "Password"

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v4, 0x3

    .line 80
    goto :goto_1

    .line 81
    :sswitch_3
    const-string v3, "MachineManaged"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/4 v4, 0x2

    .line 91
    goto :goto_1

    .line 92
    :sswitch_4
    const-string v3, "AbleToShare"

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/4 v4, 0x1

    .line 102
    goto :goto_1

    .line 103
    :sswitch_5
    const-string v3, "Username"

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_5

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    const/4 v4, 0x0

    .line 113
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 114
    .line 115
    .line 116
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v2, "Unknown node under UsernamPassword: "

    .line 121
    .line 122
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :pswitch_0
    invoke-static {v1, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseEAPMethod(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :pswitch_1
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setSoftTokenApp(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :pswitch_2
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setPassword(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :pswitch_3
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setMachineManaged(Z)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :pswitch_4
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setAbleToShare(Z)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :pswitch_5
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setUsername(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_6
    return-object v0

    .line 198
    :cond_7
    new-instance p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 199
    .line 200
    const-string v0, "Leaf node not expected for UsernamePassword"

    .line 201
    .line 202
    invoke-direct {p0, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p0

    .line 206
    nop

    .line 207
    :sswitch_data_0
    .sparse-switch
        -0xbfc130a -> :sswitch_5
        -0x76408b6 -> :sswitch_4
        0x3e562178 -> :sswitch_3
        0x4c641ebb -> :sswitch_2
        0x5416bbd2 -> :sswitch_1
        0x67bb9135 -> :sswitch_0
    .end sparse-switch

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
