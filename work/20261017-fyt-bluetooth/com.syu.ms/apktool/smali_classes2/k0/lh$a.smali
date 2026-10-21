.class public Lk0/lh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/lh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/lh;


# direct methods
.method public constructor <init>(Lk0/lh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/lh$a;->a:Lk0/lh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/lh;->l:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x4

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_0
    sget v1, Lk0/lh;->l:I

    if-ne v1, v2, :cond_1

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :cond_1
    :goto_0
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/lh;->l:I

    :cond_2
    return-void

    :array_0
    .array-data 4
        0xe3
        0x82
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x82
        0x1
        0x0
    .end array-data
.end method
