.class Landroid/content/ContentProviderClient$NotRespondingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotRespondingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ContentProviderClient;


# direct methods
.method private constructor <init>(Landroid/content/ContentProviderClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/ContentProviderClient;Landroid/content/ContentProviderClient$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/content/ContentProviderClient$NotRespondingRunnable;-><init>(Landroid/content/ContentProviderClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Detected provider not responding: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/content/ContentProviderClient;->access$100(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "ContentProviderClient"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/content/ContentProviderClient;->access$200(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    .line 33
    .line 34
    invoke-static {v1}, Landroid/content/ContentProviderClient;->access$100(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->appNotRespondingViaProvider(Landroid/content/IContentProvider;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
