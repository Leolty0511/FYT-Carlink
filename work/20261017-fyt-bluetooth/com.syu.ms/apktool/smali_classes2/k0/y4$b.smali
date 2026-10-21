.class public Lk0/y4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/y4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/y4;


# direct methods
.method public constructor <init>(Lk0/y4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/y4$b;->a:Lk0/y4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/y4$b;->a:Lk0/y4;

    iget v1, v0, Lk0/y4;->h:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/y4;->h:I

    if-lez v1, :cond_0

    .line 2
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v1, 0x3fa

    invoke-static {v0, v1, v2}, Lo1/x;->x([Lo1/x;II)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lk0/y4;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/y4$b;->a:Lk0/y4;

    const/16 v1, 0xa

    iput v1, v0, Lk0/y4;->h:I

    :goto_0
    return-void
.end method
