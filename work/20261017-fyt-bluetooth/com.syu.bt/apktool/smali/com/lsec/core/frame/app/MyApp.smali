.class public Lcom/lsec/core/frame/app/MyApp;
.super Ljava/lang/Object;
.source "MyApp.java"


# instance fields
.field public bEnableFocusChange:Z

.field public myApplication:Lcom/lsec/core/frame/app/MyApplication;

.field public mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

.field public sPage:I

.field public uiApp:Lcom/lsec/core/frame/app/MyUi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/app/MyApp;->bEnableFocusChange:Z

    .line 5
    return-void
.end method


# virtual methods
.method public requestAppIdRight()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method
