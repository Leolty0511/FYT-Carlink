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
    .line 3
    .line 4
    iput-object p1, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getProgram()Landroid/filterfw/core/Program;
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/filterfw/core/Program;->getHostValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Attempting to get program variable \'"

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    .line 22
    .line 23
    const-string v3, "\' but the program is null!"

    .line 24
    .line 25
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public getVariableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "Attempting to set program variable \'"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "\' but the program is null!"

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method
