.class public Lk0/b8$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/b8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/b8;


# direct methods
.method public constructor <init>(Lk0/b8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/b8$c;->a:Lk0/b8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/b8$c;->a:Lk0/b8;

    const/4 v1, 0x0

    iput v1, v0, Lk0/b8;->h:I

    .line 2
    iput v1, v0, Lk0/b8;->i:I

    return-void
.end method
