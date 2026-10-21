.class public Landroid/webkit/JsPromptResult;
.super Landroid/webkit/JsResult;
.source "SourceFile"


# instance fields
.field private mStringResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/JsResult$ResultReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/JsResult$ResultReceiver;)V

    return-void
.end method


# virtual methods
.method public confirm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getStringResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    return-object v0
.end method
