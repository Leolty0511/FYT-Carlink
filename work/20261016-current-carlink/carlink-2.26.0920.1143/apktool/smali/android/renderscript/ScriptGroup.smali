.class public final Landroid/renderscript/ScriptGroup;
.super Landroid/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptGroup$Builder2;,
        Landroid/renderscript/ScriptGroup$Binding;,
        Landroid/renderscript/ScriptGroup$Builder;,
        Landroid/renderscript/ScriptGroup$Input;,
        Landroid/renderscript/ScriptGroup$Future;,
        Landroid/renderscript/ScriptGroup$Closure;,
        Landroid/renderscript/ScriptGroup$Node;,
        Landroid/renderscript/ScriptGroup$ConnectLine;,
        Landroid/renderscript/ScriptGroup$IO;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptGroup"


# instance fields
.field private mClosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            ">;"
        }
    .end annotation
.end field

.field mInputs:[Landroid/renderscript/ScriptGroup$IO;

.field private mInputs2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/renderscript/ScriptGroup$Input;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field mOutputs:[Landroid/renderscript/ScriptGroup$IO;

.field private mOutputs2:[Landroid/renderscript/ScriptGroup$Future;


# direct methods
.method public constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 2
    iget-object p1, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    const-string p2, "destroy"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Landroid/renderscript/ScriptGroup$Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            ">;",
            "Ljava/util/List<",
            "Landroid/renderscript/ScriptGroup$Input;",
            ">;[",
            "Landroid/renderscript/ScriptGroup$Future;",
            ")V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v1, p1}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 4
    iput-object p2, p0, Landroid/renderscript/ScriptGroup;->mName:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Landroid/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    .line 6
    iput-object p4, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    .line 7
    iput-object p5, p0, Landroid/renderscript/ScriptGroup;->mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    .line 8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    new-array p5, p4, [J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 9
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Closure;

    invoke-virtual {v1, p1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    aput-wide v1, p5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, p5}, Landroid/renderscript/RenderScript;->nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J

    move-result-wide p1

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/BaseObj;->setID(J)V

    .line 12
    iget-object p1, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    const-string p2, "destroy"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/renderscript/ScriptGroup$Closure;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/renderscript/ScriptGroup$Closure;->destroy()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 3

    .line 22
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptGroupExecute(J)V

    return-void
.end method

.method public varargs execute([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    .line 1
    array-length v0, p1

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, " receives "

    const-string v4, "ScriptGroup"

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " inputs, less than expected "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 5
    :cond_0
    array-length v0, p1

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " inputs, more than expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 9
    :goto_0
    iget-object v3, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 10
    aget-object v3, p1, v1

    .line 11
    instance-of v5, v3, Landroid/renderscript/ScriptGroup$Future;

    if-nez v5, :cond_3

    instance-of v5, v3, Landroid/renderscript/ScriptGroup$Input;

    if-eqz v5, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget-object v5, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/renderscript/ScriptGroup$Input;

    .line 13
    invoke-virtual {v5, v3}, Landroid/renderscript/ScriptGroup$Input;->set(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": input "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is a future or unbound value"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 15
    :cond_4
    iget-object p1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, p1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/renderscript/RenderScript;->nScriptGroup2Execute(J)V

    .line 16
    iget-object p1, p0, Landroid/renderscript/ScriptGroup;->mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    array-length v2, p1

    move v3, v0

    :goto_2
    if-ge v0, v2, :cond_6

    aget-object v4, p1, v0

    .line 18
    invoke-virtual {v4}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 19
    instance-of v5, v4, Landroid/renderscript/ScriptGroup$Input;

    if-eqz v5, :cond_5

    .line 20
    check-cast v4, Landroid/renderscript/ScriptGroup$Input;

    invoke-virtual {v4}, Landroid/renderscript/ScriptGroup$Input;->get()Ljava/lang/Object;

    move-result-object v4

    :cond_5
    add-int/lit8 v5, v3, 0x1

    .line 21
    aput-object v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v5

    goto :goto_2

    :cond_6
    return-object v1
.end method

.method public setInput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    .line 10
    .line 11
    if-ne v2, p1, :cond_0

    .line 12
    .line 13
    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    .line 14
    .line 15
    iget-object v3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    iget-object p1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v8

    .line 33
    invoke-virtual/range {v3 .. v9}, Landroid/renderscript/RenderScript;->nScriptGroupSetInput(JJJ)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 41
    .line 42
    const-string p2, "Script not found"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public setOutput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    .line 10
    .line 11
    if-ne v2, p1, :cond_0

    .line 12
    .line 13
    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    .line 14
    .line 15
    iget-object v3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    iget-object p1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v8

    .line 33
    invoke-virtual/range {v3 .. v9}, Landroid/renderscript/RenderScript;->nScriptGroupSetOutput(JJJ)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 41
    .line 42
    const-string p2, "Script not found"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method
