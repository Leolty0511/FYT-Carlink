.class public Landroid/debug/JNITest;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native part1(IDLjava/lang/String;[I)I
.end method

.method private part2(DILjava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-float p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    invoke-static {p4}, Landroid/debug/JNITest;->part3(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x6

    return p1
.end method

.method private static native part3(Ljava/lang/String;)I
.end method


# virtual methods
.method public test(IDLjava/lang/String;)I
    .locals 7

    const/4 v0, 0x4

    new-array v6, v0, [I

    .line 1
    fill-array-data v6, :array_0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Landroid/debug/JNITest;->part1(IDLjava/lang/String;[I)I

    move-result p1

    return p1

    nop

    :array_0
    .array-data 4
        0x2a
        0x35
        0x41
        0x7f
    .end array-data
.end method
