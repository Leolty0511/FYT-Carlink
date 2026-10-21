.class public Ld0/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ld0/a;

.field public final synthetic b:Ld0/b;


# direct methods
.method public constructor <init>(Ld0/b;Ld0/a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Ld0/b$c;->b:Ld0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Ld0/b$c;->a:Ld0/a;

    return-void
.end method

.method public synthetic constructor <init>(Ld0/b;Ld0/a;Ld0/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ld0/b$c;-><init>(Ld0/b;Ld0/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/b$c;->a:Ld0/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ld0/a;->m1()V

    :cond_0
    return-void
.end method
