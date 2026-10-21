.class public Lk0/y4$a;
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
    iput-object p1, p0, Lk0/y4$a;->a:Lk0/y4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/y4$a;->a:Lk0/y4;

    iget-object v0, v0, Lk0/y4;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/y4$a;->a:Lk0/y4;

    const/16 v1, 0xa

    iput v1, v0, Lk0/y4;->h:I

    return-void
.end method
