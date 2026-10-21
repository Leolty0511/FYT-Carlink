.class Landroid/renderscript/ScriptGroup$IO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IO"
.end annotation


# instance fields
.field public mAllocation:Landroid/renderscript/Allocation;

.field public mKID:Landroid/renderscript/Script$KernelID;


# direct methods
.method public constructor <init>(Landroid/renderscript/Script$KernelID;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    return-void
.end method
