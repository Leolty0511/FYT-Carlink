.class public Lk0/l6$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/l6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/l6;


# direct methods
.method public constructor <init>(Lk0/l6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/l6$e;->a:Lk0/l6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        -0x70
        0x2
        0x7b
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x70
        0x2
        0x7c
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x70
        0x2
        0x30
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x70
        0x2
        0x23
        0x0
    .end array-data
.end method
