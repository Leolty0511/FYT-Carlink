.class public Lk0/vq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vq;


# direct methods
.method public constructor <init>(Lk0/vq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vq$a;->a:Lk0/vq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/vq;->l:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0xd

    const/4 v2, 0x4

    if-eq v1, v0, :cond_0

    new-array v0, v2, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    :goto_0
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/vq;->l:I

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xc0
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc0
        0x1
        0x1
    .end array-data
.end method
