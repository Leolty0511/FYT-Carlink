.class public Lk0/wf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/wf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/wf;


# direct methods
.method public constructor <init>(Lk0/wf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/wf$a;->a:Lk0/wf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    iget-object v1, p0, Lk0/wf$a;->a:Lk0/wf;

    iget v1, v1, Lk0/wf;->g:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0xd

    if-ne v1, v0, :cond_0

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/wf$a;->a:Lk0/wf;

    sget v1, Lu0/b;->D:I

    iput v1, v0, Lk0/wf;->g:I

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xca
        0x8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
