.class public Lapp/Receiver$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/Receiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lapp/Receiver$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-object v0, Le/e;->c:Lo1/z;

    iget-object v1, p0, Lapp/Receiver$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Ly0/g;->l:Lo1/z;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lapp/Receiver$b;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string/jumbo v4, "remove"

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v0, v0, Lf/b;->c:Lf/c;

    .line 4
    iget-object v1, p0, Lapp/Receiver$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lf/c;->b(Ljava/lang/String;I)V

    .line 5
    iget-object v1, p0, Lapp/Receiver$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lf/c;->c(Ljava/lang/String;Z)V

    return-void
.end method
