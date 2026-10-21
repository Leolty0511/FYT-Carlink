.class public Lk0/ca$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ca;


# direct methods
.method public constructor <init>(Lk0/ca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ca$d;->a:Lk0/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lo0/e;->k:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xa2
        0x7
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xa2
        0x6
    .end array-data
.end method
