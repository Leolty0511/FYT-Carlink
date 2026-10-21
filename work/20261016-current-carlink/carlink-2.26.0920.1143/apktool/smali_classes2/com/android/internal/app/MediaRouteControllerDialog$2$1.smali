.class Lcom/android/internal/app/MediaRouteControllerDialog$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteControllerDialog$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/MediaRouteControllerDialog$2;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2$1;->this$1:Lcom/android/internal/app/MediaRouteControllerDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2$1;->this$1:Lcom/android/internal/app/MediaRouteControllerDialog$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$300(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2$1;->this$1:Lcom/android/internal/app/MediaRouteControllerDialog$2;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$302(Lcom/android/internal/app/MediaRouteControllerDialog;Z)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2$1;->this$1:Lcom/android/internal/app/MediaRouteControllerDialog$2;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$400(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
