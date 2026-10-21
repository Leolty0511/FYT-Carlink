.class public final Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$HdRadioPsdDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HdRadioPsdData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    }
.end annotation


# static fields
.field public static final ALBUM_FIELD_NUMBER:I = 0x3

.field public static final ARTIST_EXPERIENCE_FIELD_NUMBER:I = 0x7

.field public static final ARTIST_FIELD_NUMBER:I = 0x2

.field public static final COMMENT_FIELD_NUMBER:I = 0x5

.field public static final COMMERCIAL_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

.field public static final GENRE_FIELD_NUMBER:I = 0x4

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$HdRadioPsdData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TITLE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile album_:Ljava/lang/Object;

.field private artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

.field private volatile artist_:Ljava/lang/Object;

.field private bitField0_:I

.field private comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

.field private commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

.field private volatile genre_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile title_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    new-instance v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$1;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->title_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artist_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->album_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->genre_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_f

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    const/16 v4, 0xa

    if-eq v2, v4, :cond_d

    const/16 v4, 0x12

    if-eq v2, v4, :cond_c

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_b

    const/16 v4, 0x22

    if-eq v2, v4, :cond_a

    const/16 v4, 0x2a

    const/4 v5, 0x0

    if-eq v2, v4, :cond_7

    const/16 v4, 0x32

    if-eq v2, v4, :cond_4

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_1
    iget v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;->toBuilder()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience$Builder;

    move-result-object v5

    :cond_2
    sget-object v2, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v2}, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;)Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience$Builder;

    invoke-virtual {v5}, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    :cond_3
    iget v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$HdRadioCommercial;->toBuilder()Lcom/google/android/projection/proto/Protos$HdRadioCommercial$Builder;

    move-result-object v5

    :cond_5
    sget-object v2, Lcom/google/android/projection/proto/Protos$HdRadioCommercial;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v2}, Lcom/google/android/projection/proto/Protos$HdRadioCommercial$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioCommercial;)Lcom/google/android/projection/proto/Protos$HdRadioCommercial$Builder;

    invoke-virtual {v5}, Lcom/google/android/projection/proto/Protos$HdRadioCommercial$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    :cond_6
    iget v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$HdRadioComment;->toBuilder()Lcom/google/android/projection/proto/Protos$HdRadioComment$Builder;

    move-result-object v5

    :cond_8
    sget-object v2, Lcom/google/android/projection/proto/Protos$HdRadioComment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$HdRadioComment;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    if-eqz v5, :cond_9

    invoke-virtual {v5, v2}, Lcom/google/android/projection/proto/Protos$HdRadioComment$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioComment;)Lcom/google/android/projection/proto/Protos$HdRadioComment$Builder;

    invoke-virtual {v5}, Lcom/google/android/projection/proto/Protos$HdRadioComment$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioComment;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    :cond_9
    iget v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->genre_:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->album_:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artist_:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v4, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->title_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_e
    :goto_1
    move v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$161200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$161400(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->title_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$161402(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$161500(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artist_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$161502(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artist_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$161600(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->album_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$161602(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->album_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$161700(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->genre_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$161702(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->genre_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$161802(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;Lcom/google/android/projection/proto/Protos$HdRadioComment;)Lcom/google/android/projection/proto/Protos$HdRadioComment;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    return-object p1
.end method

.method public static synthetic access$161902(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;Lcom/google/android/projection/proto/Protos$HdRadioCommercial;)Lcom/google/android/projection/proto/Protos$HdRadioCommercial;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    return-object p1
.end method

.method public static synthetic access$162002(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;)Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    return-object p1
.end method

.method public static synthetic access$162102(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    return p1
.end method

.method public static synthetic access$162200(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$160800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->toBuilder()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->toBuilder()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$HdRadioPsdData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasTitle()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasTitle()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasArtist()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasArtist()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasArtist()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasAlbum()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasAlbum()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasAlbum()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasGenre()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasGenre()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasGenre()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getGenre()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasComment()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasComment()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasComment()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getComment()Lcom/google/android/projection/proto/Protos$HdRadioComment;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getComment()Lcom/google/android/projection/proto/Protos$HdRadioComment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$HdRadioComment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasCommercial()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasCommercial()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasCommercial()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getCommercial()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getCommercial()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$HdRadioCommercial;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasArtistExperience()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasArtistExperience()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasArtistExperience()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getArtistExperience()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getArtistExperience()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    :cond_f
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v3

    :cond_10
    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->album_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->album_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getAlbumBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->album_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->album_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artist_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artist_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getArtistBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artist_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artist_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getArtistExperience()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getArtistExperienceOrBuilder()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperienceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getComment()Lcom/google/android/projection/proto/Protos$HdRadioComment;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioComment;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioComment;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCommentOrBuilder()Lcom/google/android/projection/proto/Protos$HdRadioCommentOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioComment;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioComment;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCommercial()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioCommercial;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCommercialOrBuilder()Lcom/google/android/projection/proto/Protos$HdRadioCommercialOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioCommercial;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->genre_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->genre_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getGenreBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->genre_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->genre_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$HdRadioPsdData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->title_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artist_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->album_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->genre_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getComment()Lcom/google/android/projection/proto/Protos$HdRadioComment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getCommercial()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getArtistExperience()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->title_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->title_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->title_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->title_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAlbum()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasArtist()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasArtistExperience()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasComment()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCommercial()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGenre()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTitle()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    const/4 v2, 0x1

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasArtist()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    const/4 v2, 0x2

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasAlbum()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x25

    const/4 v2, 0x3

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasGenre()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x25

    const/4 v2, 0x4

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasComment()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x25

    const/4 v2, 0x5

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getComment()Lcom/google/android/projection/proto/Protos$HdRadioComment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$HdRadioComment;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasCommercial()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x25

    const/4 v2, 0x6

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getCommercial()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$HdRadioCommercial;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasArtistExperience()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x25

    const/4 v2, 0x7

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getArtistExperience()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$160900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    const-class v2, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->newBuilder()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->newBuilderForType()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->newBuilderForType()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->toBuilder()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->toBuilder()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->title_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->artist_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->album_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->genre_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getComment()Lcom/google/android/projection/proto/Protos$HdRadioComment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getCommercial()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getArtistExperience()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
