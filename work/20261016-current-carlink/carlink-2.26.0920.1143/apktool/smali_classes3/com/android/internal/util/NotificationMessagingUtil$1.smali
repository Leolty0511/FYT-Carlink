.class Lcom/android/internal/util/NotificationMessagingUtil$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/NotificationMessagingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/NotificationMessagingUtil;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/NotificationMessagingUtil;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/NotificationMessagingUtil$1;->this$0:Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 1
    const-string p1, "sms_default_application"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/internal/util/NotificationMessagingUtil$1;->this$0:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 14
    .line 15
    invoke-static {p1, p3}, Lcom/android/internal/util/NotificationMessagingUtil;->access$000(Lcom/android/internal/util/NotificationMessagingUtil;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
