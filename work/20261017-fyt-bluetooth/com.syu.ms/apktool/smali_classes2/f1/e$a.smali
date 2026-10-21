.class public Lf1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf1/e;


# direct methods
.method public constructor <init>(Lf1/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/e$a;->a:Lf1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/e$a;->a:Lf1/e;

    iget-object v0, v0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lf1/e$a;->a:Lf1/e;

    iget-object v2, v2, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/s$a;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lf1/s$a;->n()V

    .line 4
    invoke-virtual {v2}, Lf1/s$a;->o()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
