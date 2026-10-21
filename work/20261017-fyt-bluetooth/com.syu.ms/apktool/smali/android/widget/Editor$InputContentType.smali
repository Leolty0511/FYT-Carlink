.class Landroid/widget/Editor$InputContentType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputContentType"
.end annotation


# instance fields
.field public enterDown:Z

.field public extras:Landroid/os/Bundle;

.field public imeActionId:I

.field public imeActionLabel:Ljava/lang/CharSequence;

.field public imeOptions:I

.field public onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field public privateImeOptions:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    return-void
.end method
