.class public abstract Lcom/android/internal/os/BaseCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FATAL_ERROR_CODE:Ljava/lang/String; = "Error type 1"

.field public static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field public static final NO_SYSTEM_ERROR_CODE:Ljava/lang/String; = "Error type 2"


# instance fields
.field protected final mArgs:Landroid/os/ShellCommand;

.field private mRawArgs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/internal/os/BaseCommand$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/internal/os/BaseCommand$1;-><init>(Lcom/android/internal/os/BaseCommand;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Landroid/os/ShellCommand;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getRawArgs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mRawArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public nextArg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Landroid/os/ShellCommand;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextArgRequired()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Landroid/os/ShellCommand;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextOption()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Landroid/os/ShellCommand;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onRun()V
.end method

.method public abstract onShowUsage(Ljava/io/PrintStream;)V
.end method

.method public run([Ljava/lang/String;)V
    .locals 10

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/android/internal/os/BaseCommand;->mRawArgs:[Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Landroid/os/ShellCommand;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x0

    .line 21
    move-object v7, p1

    .line 22
    invoke-virtual/range {v2 .. v9}, Landroid/os/ShellCommand;->init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;I)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BaseCommand;->onRun()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_1
    move-exception p1

    .line 40
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 48
    .line 49
    .line 50
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "Error: "

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public showUsage()V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    return-void
.end method
