.class Lcom/android/internal/backup/LocalTransport$DecodedFilename;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/LocalTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodedFilename"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/backup/LocalTransport$DecodedFilename;",
        ">;"
    }
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->file:Ljava/io/File;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/backup/LocalTransport$DecodedFilename;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    invoke-virtual {p0, p1}, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->compareTo(Lcom/android/internal/backup/LocalTransport$DecodedFilename;)I

    move-result p1

    return p1
.end method
