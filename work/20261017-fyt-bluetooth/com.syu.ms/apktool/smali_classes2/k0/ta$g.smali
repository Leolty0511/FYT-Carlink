.class public Lk0/ta$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ta;


# direct methods
.method public constructor <init>(Lk0/ta;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ta$g;->a:Lk0/ta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    sget v0, Ln0/j4;->b:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    sget v0, Lk0/nt;->a:I

    const v1, 0x1013d

    if-ne v0, v1, :cond_0

    .line 3
    sget v0, Lu0/b;->r0:I

    if-nez v0, :cond_0

    .line 4
    sget v0, Lk0/ta;->w:I

    if-nez v0, :cond_0

    .line 5
    sget v0, Lu0/b;->C:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 6
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lo1/u;->k()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0xa
        0x1
        0x32
    .end array-data
.end method
