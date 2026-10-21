.class Lcom/syu/bt/page/Page_Set$2;
.super Ljava/lang/Object;
.source "Page_Set.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1290
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syu/bt/page/Page_Set;->iRunnAIQR_BTN:Z

    .line 1291
    return-void
.end method
