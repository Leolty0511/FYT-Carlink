.class public Landroid/media/RingtoneManager$NewRingtoneScanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RingtoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewRingtoneScanner"
.end annotation


# instance fields
.field private mFile:Ljava/io/File;

.field private mMediaScannerConnection:Landroid/media/MediaScannerConnection;

.field private mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/RingtoneManager;


# direct methods
.method public constructor <init>(Landroid/media/RingtoneManager;Ljava/io/File;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->this$0:Landroid/media/RingtoneManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 13
    .line 14
    iput-object p2, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mFile:Ljava/io/File;

    .line 15
    .line 16
    new-instance p2, Landroid/media/MediaScannerConnection;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/media/RingtoneManager;->access$000(Landroid/media/RingtoneManager;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p2, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/media/MediaScannerConnection;->connect()V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 3

    iget-object v0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mFile:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object p1, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string p2, "RingtoneManager"

    .line 17
    .line 18
    const-string v0, "Unable to put new ringtone Uri in queue"

    .line 19
    .line 20
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public take()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method
