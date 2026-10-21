.class public Landroid/filterfw/core/ProgramVariable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mProgram:Landroid/filterfw/core/Program;

.field private mVarName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Program;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    .line 3
    iput-object p2, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProgram()Landroid/filterfw/core/Program;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/Program;->getHostValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to get program variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' but the program is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVariableName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to set program variable \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' but the program is null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
