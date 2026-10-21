.class public final synthetic Landroid/app/timezone/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/app/timezone/RulesManager$CallbackWrapper;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/timezone/RulesManager$CallbackWrapper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/timezone/a;->b:Landroid/app/timezone/RulesManager$CallbackWrapper;

    iput p2, p0, Landroid/app/timezone/a;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/app/timezone/a;->b:Landroid/app/timezone/RulesManager$CallbackWrapper;

    iget v1, p0, Landroid/app/timezone/a;->c:I

    invoke-static {v0, v1}, Landroid/app/timezone/RulesManager$CallbackWrapper;->a(Landroid/app/timezone/RulesManager$CallbackWrapper;I)V

    return-void
.end method
