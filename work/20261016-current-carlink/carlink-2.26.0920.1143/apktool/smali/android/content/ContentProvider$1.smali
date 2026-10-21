.class Landroid/content/ContentProvider$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ContentProvider;

.field final synthetic val$args:Ljava/lang/Object;

.field final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field final synthetic val$func:Landroid/content/ContentProvider$PipeDataWriter;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$opts:Landroid/os/Bundle;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentProvider;Landroid/content/ContentProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/content/ContentProvider$1;->this$0:Landroid/content/ContentProvider;

    iput-object p2, p0, Landroid/content/ContentProvider$1;->val$func:Landroid/content/ContentProvider$PipeDataWriter;

    iput-object p3, p0, Landroid/content/ContentProvider$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Landroid/content/ContentProvider$1;->val$uri:Landroid/net/Uri;

    iput-object p5, p0, Landroid/content/ContentProvider$1;->val$mimeType:Ljava/lang/String;

    iput-object p6, p0, Landroid/content/ContentProvider$1;->val$opts:Landroid/os/Bundle;

    iput-object p7, p0, Landroid/content/ContentProvider$1;->val$args:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$1;->val$func:Landroid/content/ContentProvider$PipeDataWriter;

    .line 2
    .line 3
    iget-object p1, p0, Landroid/content/ContentProvider$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    const/4 v6, 0x1

    .line 6
    aget-object v1, p1, v6

    .line 7
    .line 8
    iget-object v2, p0, Landroid/content/ContentProvider$1;->val$uri:Landroid/net/Uri;

    .line 9
    .line 10
    iget-object v3, p0, Landroid/content/ContentProvider$1;->val$mimeType:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v4, p0, Landroid/content/ContentProvider$1;->val$opts:Landroid/os/Bundle;

    .line 13
    .line 14
    iget-object v5, p0, Landroid/content/ContentProvider$1;->val$args:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface/range {v0 .. v5}, Landroid/content/ContentProvider$PipeDataWriter;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object p1, p0, Landroid/content/ContentProvider$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    .line 20
    .line 21
    aget-object p1, p1, v6

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    const-string v0, "ContentProvider"

    .line 29
    .line 30
    const-string v1, "Failure closing pipe"

    .line 31
    .line 32
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method
