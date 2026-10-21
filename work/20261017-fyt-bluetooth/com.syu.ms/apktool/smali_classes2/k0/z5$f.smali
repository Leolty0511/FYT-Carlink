.class public Lk0/z5$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/z5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/z5;


# direct methods
.method public constructor <init>(Lk0/z5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/z5$f;->a:Lk0/z5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/z5;->Q:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    .line 2
    sget v1, Lk0/z5;->Q:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    :cond_0
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/z5;->Q:I

    :cond_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x8b
        0x1
        0x1
    .end array-data
.end method
