.class Lcom/lsec/core/frame/ctrl/JSwitchButton$PerformClick;
.super Ljava/lang/Object;
.source "JSwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/ctrl/JSwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/ctrl/JSwitchButton;


# direct methods
.method private constructor <init>(Lcom/lsec/core/frame/ctrl/JSwitchButton;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton$PerformClick;->this$0:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lsec/core/frame/ctrl/JSwitchButton;Lcom/lsec/core/frame/ctrl/JSwitchButton$PerformClick;)V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/lsec/core/frame/ctrl/JSwitchButton$PerformClick;-><init>(Lcom/lsec/core/frame/ctrl/JSwitchButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton$PerformClick;->this$0:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->performClick()Z

    .line 298
    return-void
.end method
