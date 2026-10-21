.class public abstract synthetic Landroid/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic B(Ljava/time/LocalDate;)Ljava/time/LocalDate;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->withMonth(I)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic C()Ljava/time/LocalTime;
    .locals 1

    sget-object v0, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    return-object v0
.end method

.method public static bridge synthetic D(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Ljava/time/LocalTime;)I
    .locals 0

    invoke-virtual {p0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Ljava/time/ZonedDateTime;)I
    .locals 0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Ljava/time/Duration;)J
    .locals 2

    invoke-virtual {p0}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic d(Ljava/util/Locale;)Landroid/icu/text/ListFormatter;
    .locals 0

    invoke-static {p0}, Landroid/icu/text/ListFormatter;->getInstance(Ljava/util/Locale;)Landroid/icu/text/ListFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/icu/text/ListFormatter;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/ListFormatter;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/time/LocalDateTime;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/lang/Object;)Ljava/nio/file/SecureDirectoryStream;
    .locals 0

    check-cast p0, Ljava/nio/file/SecureDirectoryStream;

    return-object p0
.end method

.method public static bridge synthetic j(J)Ljava/time/Duration;
    .locals 0

    invoke-static {p0, p1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/time/LocalDate;)Ljava/time/LocalDate;
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->minusYears(J)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/time/LocalDate;I)Ljava/time/LocalDate;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->withDayOfMonth(I)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/time/LocalTime;
    .locals 1

    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    return-object v0
.end method

.method public static bridge synthetic n(J)Ljava/time/LocalTime;
    .locals 0

    invoke-static {p0, p1}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Ljava/time/Period;I)Ljava/time/Period;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Ljava/time/ZonedDateTime;)Ljava/time/ZoneId;
    .locals 0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Ljava/time/ZonedDateTime;Ljava/time/Period;)Ljava/time/ZonedDateTime;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s()Ljava/util/Base64$Decoder;
    .locals 1

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic t(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Ljava/util/Locale$LanguageRange;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic u(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/Locale;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/Locale;->lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic v(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    return-void
.end method

.method public static bridge synthetic w(Ljava/nio/file/SecureDirectoryStream;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/SecureDirectoryStream;->deleteFile(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic x(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/SecureDirectoryStream;

    return p0
.end method

.method public static bridge synthetic y(Ljava/time/Duration;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/time/Duration;->isNegative()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic z(Ljava/util/Base64$Decoder;[B)[B
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object p0

    return-object p0
.end method
