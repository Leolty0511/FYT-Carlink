.class public Lk0/tn$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/tn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/tn;


# direct methods
.method public constructor <init>(Lk0/tn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/tn$d;->a:Lk0/tn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/tn;->q:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_1

    .line 2
    sget v0, Lk0/tn;->q:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    :cond_0
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/tn;->q:I

    :cond_1
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x40
        0x2
        0x8
        0x13
    .end array-data
.end method
