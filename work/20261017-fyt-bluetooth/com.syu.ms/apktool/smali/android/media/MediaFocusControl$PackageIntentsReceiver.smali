.class Landroid/media/MediaFocusControl$PackageIntentsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageIntentsReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method private constructor <init>(Landroid/media/MediaFocusControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaFocusControl$PackageIntentsReceiver;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/MediaFocusControl;Landroid/media/MediaFocusControl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl$PackageIntentsReceiver;-><init>(Landroid/media/MediaFocusControl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p2, p0, Landroid/media/MediaFocusControl$PackageIntentsReceiver;->this$0:Landroid/media/MediaFocusControl;

    invoke-static {p2, p1, v1}, Landroid/media/MediaFocusControl;->access$2700(Landroid/media/MediaFocusControl;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "android.intent.extra.REPLACING"

    .line 6
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p2, p0, Landroid/media/MediaFocusControl$PackageIntentsReceiver;->this$0:Landroid/media/MediaFocusControl;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Landroid/media/MediaFocusControl;->access$2700(Landroid/media/MediaFocusControl;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method
