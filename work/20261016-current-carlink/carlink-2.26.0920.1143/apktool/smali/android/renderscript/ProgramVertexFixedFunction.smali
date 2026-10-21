.class public Landroid/renderscript/ProgramVertexFixedFunction;
.super Landroid/renderscript/ProgramVertex;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramVertexFixedFunction$Constants;,
        Landroid/renderscript/ProgramVertexFixedFunction$Builder;,
        Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ProgramVertex;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method public bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->getAllocation()Landroid/renderscript/Allocation;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Landroid/renderscript/Program;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
