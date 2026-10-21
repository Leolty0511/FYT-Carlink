.class public Lk0/il$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/il;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/il;


# direct methods
.method public constructor <init>(Lk0/il;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/il$a;->a:Lk0/il;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/il$a;->a:Lk0/il;

    iget-boolean v1, v0, Lk0/il;->q:Z

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    const/16 v2, 0x40e

    iget v0, v0, Lk0/il;->p:I

    invoke-static {v1, v2, v0}, Lo1/x;->x([Lo1/x;II)V

    :cond_0
    return-void
.end method
