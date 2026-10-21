.class public Lk0/jn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/jn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/jn;


# direct methods
.method public constructor <init>(Lk0/jn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jn$a;->a:Lk0/jn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/jn$a;->a:Lk0/jn;

    iget-object v0, v0, Lk0/jn;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/jn$a;->a:Lk0/jn;

    const/4 v1, 0x5

    iput v1, v0, Lk0/jn;->e:I

    return-void
.end method
