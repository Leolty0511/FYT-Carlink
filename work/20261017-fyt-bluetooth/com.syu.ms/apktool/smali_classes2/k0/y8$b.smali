.class public Lk0/y8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/y8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/y8;


# direct methods
.method public constructor <init>(Lk0/y8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/y8$b;->a:Lk0/y8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/y8$b;->a:Lk0/y8;

    invoke-virtual {v0}, Lk0/y8;->c3()V

    return-void
.end method
