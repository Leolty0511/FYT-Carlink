.class public abstract synthetic Landroid/net/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic A()V
    .locals 1

    new-instance v0, Landroid/app/Notification$BubbleMetadata$Builder;

    return-void
.end method

.method public static bridge synthetic B(Landroid/app/Notification$BubbleMetadata$Builder;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;

    return-void
.end method

.method public static bridge synthetic C(Landroid/app/Notification$BubbleMetadata;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D(Landroid/icu/text/Edits$Iterator;)I
    .locals 0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->newLength()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic a(Landroid/app/Notification$BubbleMetadata;)I
    .locals 0

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/icu/text/Edits$Iterator;)I
    .locals 0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Landroid/system/StructTimeval;)J
    .locals 2

    invoke-virtual {p0}, Landroid/system/StructTimeval;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic d()Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 1

    new-instance v0, Landroid/app/Notification$BubbleMetadata$Builder;

    invoke-direct {v0}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic e(Landroid/app/Notification$BubbleMetadata$Builder;Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Landroid/app/Notification$BubbleMetadata$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/app/Notification$BubbleMetadata$Builder;Z)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/app/Notification$BubbleMetadata;)Landroid/app/PendingIntent;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i()Landroid/icu/text/CaseMap$Upper;
    .locals 1

    invoke-static {}, Landroid/icu/text/CaseMap;->toUpper()Landroid/icu/text/CaseMap$Upper;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic j(Landroid/icu/text/Edits;)Landroid/icu/text/Edits$Iterator;
    .locals 0

    invoke-virtual {p0}, Landroid/icu/text/Edits;->getFineIterator()Landroid/icu/text/Edits$Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k()Landroid/icu/text/Edits;
    .locals 1

    new-instance v0, Landroid/icu/text/Edits;

    invoke-direct {v0}, Landroid/icu/text/Edits;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic l(J)Landroid/system/StructTimeval;
    .locals 0

    invoke-static {p0, p1}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/system/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Landroid/icu/text/CaseMap$Upper;Ljava/util/Locale;Ljava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Landroid/icu/text/CaseMap$Upper;Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p()V
    .locals 1

    new-instance v0, Landroid/icu/text/Edits;

    return-void
.end method

.method public static bridge synthetic q(Landroid/app/Notification$BubbleMetadata$Builder;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;

    return-void
.end method

.method public static bridge synthetic r(Landroid/icu/text/Edits$Iterator;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/Edits$Iterator;->findSourceIndex(I)Z

    return-void
.end method

.method public static bridge synthetic s(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    return-void
.end method

.method public static bridge synthetic t(Landroid/app/Notification$BubbleMetadata;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic u(Landroid/icu/text/Edits$Iterator;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Landroid/icu/text/Edits;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic w(Landroid/app/Notification$BubbleMetadata;)I
    .locals 0

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic x(Landroid/icu/text/Edits$Iterator;)I
    .locals 0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Landroid/app/Notification$BubbleMetadata$Builder;Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Landroid/app/Notification$BubbleMetadata$Builder;Z)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object p0

    return-object p0
.end method
