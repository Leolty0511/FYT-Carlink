.class public Lk0/gq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/gq;


# direct methods
.method public constructor <init>(Lk0/gq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/gq$a;->a:Lk0/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/nt;->a:I

    const v1, 0xb01c7

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1

    const v1, 0x4b01c5

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

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0xee
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xee
        0x1
        0x0
    .end array-data
.end method
