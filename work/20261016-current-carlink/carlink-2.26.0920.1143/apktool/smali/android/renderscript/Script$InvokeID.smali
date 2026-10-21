.class public final Landroid/renderscript/Script$InvokeID;
.super Landroid/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvokeID"
.end annotation


# instance fields
.field mScript:Landroid/renderscript/Script;

.field mSlot:I


# direct methods
.method public constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Landroid/renderscript/Script$InvokeID;->mScript:Landroid/renderscript/Script;

    .line 5
    .line 6
    iput p5, p0, Landroid/renderscript/Script$InvokeID;->mSlot:I

    .line 7
    .line 8
    return-void
.end method
