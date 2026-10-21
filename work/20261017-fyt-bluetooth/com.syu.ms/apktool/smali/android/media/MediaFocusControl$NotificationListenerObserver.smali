.class Landroid/media/MediaFocusControl$NotificationListenerObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationListenerObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method public constructor <init>(Landroid/media/MediaFocusControl;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/media/MediaFocusControl$NotificationListenerObserver;->this$0:Landroid/media/MediaFocusControl;

    .line 2
    invoke-static {p1}, Landroid/media/MediaFocusControl;->access$200(Landroid/media/MediaFocusControl;)Landroid/media/MediaFocusControl$MediaEventHandler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3
    invoke-static {p1}, Landroid/media/MediaFocusControl;->access$300(Landroid/media/MediaFocusControl;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/media/MediaFocusControl;->access$400()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/media/MediaFocusControl$NotificationListenerObserver;->this$0:Landroid/media/MediaFocusControl;

    invoke-static {p1}, Landroid/media/MediaFocusControl;->access$500(Landroid/media/MediaFocusControl;)V

    :cond_1
    :goto_0
    return-void
.end method
