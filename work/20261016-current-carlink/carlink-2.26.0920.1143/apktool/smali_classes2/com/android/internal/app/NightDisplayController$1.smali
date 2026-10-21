.class Lcom/android/internal/app/NightDisplayController$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/NightDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/NightDisplayController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/NightDisplayController$1;->this$0:Lcom/android/internal/app/NightDisplayController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/internal/app/NightDisplayController$1;->this$0:Lcom/android/internal/app/NightDisplayController;

    .line 15
    .line 16
    invoke-static {p2, p1}, Lcom/android/internal/app/NightDisplayController;->access$000(Lcom/android/internal/app/NightDisplayController;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method
