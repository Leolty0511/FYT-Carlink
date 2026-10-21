.class public Lh0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh0/b;


# direct methods
.method public constructor <init>(Lh0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh0/b$a;->a:Lh0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lu0/b;->n4:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x43
        0x5a
        0x30
    .end array-data
.end method
