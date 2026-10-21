.class public Lcom/android/internal/widget/AbsActionBarView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/AbsActionBarView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/widget/AbsActionBarView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/AbsActionBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$a;->a:Lcom/android/internal/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView$a;->a:Lcom/android/internal/widget/AbsActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/AbsActionBarView;->n()Z

    return-void
.end method
