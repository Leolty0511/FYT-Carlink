.class public Lk0/hb$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hb;


# direct methods
.method public constructor <init>(Lk0/hb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hb$c;->a:Lk0/hb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x4

    const/16 v2, 0x76

    if-ne v0, v2, :cond_1

    .line 2
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_1
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_2

    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x83
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x83
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x83
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x83
        0x1
        0x1
    .end array-data
.end method
