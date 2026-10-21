.class public final synthetic Landroid/hardware/radio/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/radio/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroid/hardware/radio/a;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {p1}, Landroid/hardware/radio/ProgramSelector;->b(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result p1

    return p1

    :goto_0
    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {p1}, Landroid/hardware/radio/ProgramSelector;->a(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
