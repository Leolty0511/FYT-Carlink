.class public final Landroid/renderscript/Script$FieldID;
.super Landroid/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldID"
.end annotation


# instance fields
.field public mScript:Landroid/renderscript/Script;

.field public mSlot:I


# direct methods
.method public constructor <init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 2
    iput-object p3, p0, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    .line 3
    iput p4, p0, Landroid/renderscript/Script$FieldID;->mSlot:I

    return-void
.end method
