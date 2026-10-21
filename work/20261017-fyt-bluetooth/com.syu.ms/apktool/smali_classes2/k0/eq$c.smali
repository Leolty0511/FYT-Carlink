.class public Lk0/eq$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/eq;


# direct methods
.method public constructor <init>(Lk0/eq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/eq$c;->a:Lk0/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x1a

    const/4 v2, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xee
        0x2
        0x17
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xee
        0x2
        0x17
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xee
        0x2
        0x17
        0x2
    .end array-data
.end method
