.class Lcom/syu/bt/page/pop/Page_PopAIQR2$1;
.super Ljava/lang/Object;
.source "Page_PopAIQR2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/pop/Page_PopAIQR2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syu/bt/page/pop/Page_PopAIQR2;->isRunnAIUvEcnr:Z

    .line 238
    const-string v0, "AIQR1"

    const-string v1, "  JAVA 11 Page_PopAIQR RunnAIUvEcnr  isRunnAIUvEcnr "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method
