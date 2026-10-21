.class public Lk0/ts$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ts;


# direct methods
.method public constructor <init>(Lk0/ts;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ts$a;->a:Lk0/ts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ts$a;->a:Lk0/ts;

    const/16 v1, 0xa

    iput v1, v0, Lk0/ts;->e:I

    .line 2
    iget-object v0, v0, Lk0/ts;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    return-void
.end method
