.class public final Landroid/telecom/Call$RttCall;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RttCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$RttCall$RttAudioMode;
    }
.end annotation


# static fields
.field private static final READ_BUFFER_SIZE:I = 0x3e8

.field public static final RTT_MODE_FULL:I = 0x1

.field public static final RTT_MODE_HCO:I = 0x2

.field public static final RTT_MODE_INVALID:I = 0x0

.field public static final RTT_MODE_VCO:I = 0x3


# instance fields
.field private final mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private mReadBuffer:[C

.field private mReceiveStream:Ljava/io/InputStreamReader;

.field private mRttMode:I

.field private final mTelecomCallId:Ljava/lang/String;

.field private mTransmitStream:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStreamReader;Ljava/io/OutputStreamWriter;ILandroid/telecom/InCallAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    new-array v0, v0, [C

    .line 7
    .line 8
    iput-object v0, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    .line 9
    .line 10
    iput-object p1, p0, Landroid/telecom/Call$RttCall;->mTelecomCallId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    .line 13
    .line 14
    iput-object p3, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    .line 15
    .line 16
    iput p4, p0, Landroid/telecom/Call$RttCall;->mRttMode:I

    .line 17
    .line 18
    iput-object p5, p0, Landroid/telecom/Call$RttCall;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getRttAudioMode()I
    .locals 1

    iget v0, p0, Landroid/telecom/Call$RttCall;->mRttMode:I

    return v0
.end method

.method public read()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    .line 4
    .line 5
    iget-object v3, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    .line 6
    .line 7
    const/16 v4, 0x3e8

    .line 8
    .line 9
    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStreamReader;->read([CII)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v3, Ljava/lang/String;

    .line 17
    .line 18
    iget-object v4, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    .line 19
    .line 20
    invoke-direct {v3, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-object v3

    .line 24
    :catch_0
    move-exception v2

    .line 25
    const/4 v3, 0x1

    .line 26
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object v2, v3, v1

    .line 29
    .line 30
    const-string v1, "Exception encountered when reading from InputStreamReader: %s"

    .line 31
    .line 32
    invoke-static {p0, v1, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public readImmediately()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->ready()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    .line 11
    .line 12
    iget-object v2, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    .line 13
    .line 14
    const/16 v3, 0x3e8

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/InputStreamReader;->read([CII)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    .line 27
    .line 28
    invoke-direct {v1, v2, v4, v0}, Ljava/lang/String;-><init>([CII)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-object v1
.end method

.method public setRttMode(I)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call$RttCall;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->setRttMode(Ljava/lang/String;I)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
